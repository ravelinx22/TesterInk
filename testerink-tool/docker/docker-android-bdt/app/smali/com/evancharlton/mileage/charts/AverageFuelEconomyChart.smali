.class public Lcom/evancharlton/mileage/charts/AverageFuelEconomyChart;
.super Lcom/evancharlton/mileage/charts/FuelEconomyChart;
.source "AverageFuelEconomyChart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/evancharlton/mileage/charts/FuelEconomyChart;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAxisTitle()Ljava/lang/String;
    .locals 1

    .line 12
    const v0, 0x7f0800bc

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/charts/AverageFuelEconomyChart;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected processCursor(Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;Landroid/database/Cursor;Lcom/evancharlton/mileage/dao/Vehicle;)V
    .locals 7
    .param p1, "generator"    # Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .line 17
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    .local v1, "num":I
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 19
    invoke-virtual {p1}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    goto :goto_1

    .line 22
    :cond_0
    if-lez v1, :cond_1

    .line 23
    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    .line 24
    .local v2, "economy":D
    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    .line 25
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/evancharlton/mileage/charts/AverageFuelEconomyChart;->addPoint(JD)V

    .line 28
    .end local v2    # "economy":D
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .local v2, "num":I
    invoke-virtual {p1, v1}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->update(I)V

    .line 17
    move v1, v2

    goto :goto_0

    .line 30
    .end local v2    # "num":I
    :cond_2
    :goto_1
    return-void
.end method
