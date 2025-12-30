<?php
$conn = new mysqli("localhost", "root", "", "tourism_expenditure");
if ($conn->connect_error) {
    die("Database connection failed");
}

/* =========================
   TABLE 1: DOMESTIC VISITORS
   columns: year_2010, year_2011
   ========================= */
$v_query = $conn->query("SELECT component, year_2011 FROM domestic_visitors");

$v_labels = [];
$v_data = [];

while ($row = $v_query->fetch_assoc()) {
    $v_labels[] = $row['component'];
    $v_data[] = (int)$row['year_2011'];
}

/* =========================
   TABLE 2: DOMESTIC TOURISTS
   columns: expenditure_2010, expenditure_2011
   ========================= */
$t_query = $conn->query("SELECT component, expenditure_2011 FROM domestic_tourists");

$t_labels = [];
$t_data = [];

while ($row = $t_query->fetch_assoc()) {
    $t_labels[] = $row['component'];
    $t_data[] = (int)$row['expenditure_2011'];
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Tourism Expenditure Dashboard</title>

<!-- Chart.js -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<!-- External CSS -->
<link rel="stylesheet" href="style.css">
</head>

<body>

<div class="dashboard">

<h1>Domestic Tourism Expenditure Analysis (2011)</h1>

<div class="card">
    <h2>Domestic Visitors – Bar Chart</h2>
    <canvas id="visitorBar"></canvas>
</div>

<div class="card">
    <h2>Domestic Visitors – Pie Chart</h2>
    <canvas id="visitorPie"></canvas>
</div>

<div class="card">
    <h2>Domestic Visitors – Line Chart</h2>
    <canvas id="visitorLine"></canvas>
</div>

<div class="card">
    <h2>Domestic Tourists – Bar Chart</h2>
    <canvas id="touristBar"></canvas>
</div>

</div>

<!-- ======================
     JAVASCRIPT SECTION
     ====================== -->
<script>
/* PHP → JS */
const vLabels = <?= json_encode($v_labels) ?>;
const vData   = <?= json_encode($v_data) ?>;

const tLabels = <?= json_encode($t_labels) ?>;
const tData   = <?= json_encode($t_data) ?>;

/* VISITORS BAR */
new Chart(document.getElementById('visitorBar'), {
    type: 'bar',
    data: {
        labels: vLabels,
        datasets: [{
            label: 'RM Million',
            data: vData,
            backgroundColor: '#4f7cff'
        }]
    },
    options: { responsive: true }
});

/* VISITORS PIE */
new Chart(document.getElementById('visitorPie'), {
    type: 'doughnut',
    data: {
        labels: vLabels,
        datasets: [{
            data: vData,
            backgroundColor: [
                '#4f7cff','#00b894','#f0932b',
                '#eb4d4b','#6c5ce7','#fdcb6e'
            ]
        }]
    }
});

/* VISITORS LINE */
new Chart(document.getElementById('visitorLine'), {
    type: 'line',
    data: {
        labels: vLabels,
        datasets: [{
            label: 'RM Million',
            data: vData,
            borderColor: '#4f7cff',
            tension: 0.4,
            fill: false
        }]
    }
});

/* TOURISTS BAR */
new Chart(document.getElementById('touristBar'), {
    type: 'bar',
    data: {
        labels: tLabels,
        datasets: [{
            label: 'RM Million',
            data: tData,
            backgroundColor: '#00b894'
        }]
    }
});
</script>

</body>
</html>
