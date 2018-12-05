.class public abstract Lcom/evancharlton/mileage/charts/DistanceChart;
.super Lcom/evancharlton/mileage/charts/LineChart;
.source "DistanceChart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/evancharlton/mileage/charts/LineChart;-><init>()V

    return-void
.end method


# virtual methods
.method protected createChartGenerator()Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;
    .locals 5

    .line 9
    new-instance v0, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/charts/DistanceChart;->getVehicle()Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "timestamp"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "odometer"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v0, p0, v1, v2}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;-><init>(Lcom/evancharlton/mileage/charts/LineChart;Lcom/evancharlton/mileage/dao/Vehicle;[Ljava/lang/String;)V

    return-object v0
.end method
