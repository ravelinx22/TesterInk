.class public abstract Lcom/evancharlton/mileage/charts/IntervalCostChart;
.super Lcom/evancharlton/mileage/charts/CostChart;
.source "IntervalCostChart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/evancharlton/mileage/charts/CostChart;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getInterval()J
.end method

.method protected final processCursor(Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;Landroid/database/Cursor;Lcom/evancharlton/mileage/dao/Vehicle;)V
    .locals 9
    .param p1, "generator"    # Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .line 13
    const/4 v0, 0x0

    .line 14
    .local v0, "num":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/evancharlton/mileage/charts/IntervalCostChart;->getInterval()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 15
    .local v1, "limit":J
    const-wide/16 v3, 0x0

    .line 16
    .local v3, "totalCost":D
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_2

    .line 17
    invoke-virtual {p1}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 18
    goto :goto_1

    .line 20
    :cond_0
    const/4 v5, 0x0

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v8, v6, v1

    if-lez v8, :cond_1

    .line 21
    const/4 v6, 0x1

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    add-double/2addr v3, v6

    .line 22
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {p0, v5, v6, v3, v4}, Lcom/evancharlton/mileage/charts/IntervalCostChart;->addPoint(JD)V

    .line 24
    :cond_1
    add-int/lit8 v5, v0, 0x1

    .local v5, "num":I
    invoke-virtual {p1, v0}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->update(I)V

    .line 25
    .end local v0    # "num":I
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 15
    move v0, v5

    goto :goto_0

    .line 27
    .end local v5    # "num":I
    .restart local v0    # "num":I
    :cond_2
    :goto_1
    return-void
.end method
