.class public Lcom/evancharlton/mileage/charts/WorstFuelEconomyChart;
.super Lcom/evancharlton/mileage/charts/FuelEconomyChart;
.source "WorstFuelEconomyChart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/evancharlton/mileage/charts/FuelEconomyChart;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAxisTitle()Ljava/lang/String;
    .locals 1

    .line 33
    const v0, 0x7f0800d4

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/charts/WorstFuelEconomyChart;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected processCursor(Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;Landroid/database/Cursor;Lcom/evancharlton/mileage/dao/Vehicle;)V
    .locals 7
    .param p1, "generator"    # Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .line 13
    const/4 v0, 0x0

    .line 14
    .local v0, "num":I
    const-wide v1, 0x40f86a0000000000L    # 100000.0

    .line 15
    .local v1, "worst_fuel_economy":D
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17
    goto :goto_1

    .line 19
    :cond_0
    if-lez v0, :cond_2

    .line 20
    const/4 v3, 0x1

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    .line 21
    .local v3, "economy":D
    invoke-static {p3, v3, v4, v1, v2}, Lcom/evancharlton/mileage/math/Calculator;->isBetterEconomy(Lcom/evancharlton/mileage/dao/Vehicle;DD)Z

    move-result v5

    if-nez v5, :cond_1

    .line 22
    move-wide v1, v3

    .line 24
    :cond_1
    const/4 v5, 0x0

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {p0, v5, v6, v1, v2}, Lcom/evancharlton/mileage/charts/WorstFuelEconomyChart;->addPoint(JD)V

    .line 26
    .end local v3    # "economy":D
    :cond_2
    add-int/lit8 v3, v0, 0x1

    .local v3, "num":I
    invoke-virtual {p1, v0}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->update(I)V

    .line 27
    .end local v0    # "num":I
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 14
    move v0, v3

    goto :goto_0

    .line 29
    .end local v3    # "num":I
    .restart local v0    # "num":I
    :cond_3
    :goto_1
    return-void
.end method
