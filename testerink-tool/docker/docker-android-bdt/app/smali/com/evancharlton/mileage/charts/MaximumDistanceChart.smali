.class public Lcom/evancharlton/mileage/charts/MaximumDistanceChart;
.super Lcom/evancharlton/mileage/charts/DistanceChart;
.source "MaximumDistanceChart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/evancharlton/mileage/charts/DistanceChart;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAxisTitle()Ljava/lang/String;
    .locals 1

    .line 13
    const v0, 0x7f0800cd

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/charts/MaximumDistanceChart;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected processCursor(Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;Landroid/database/Cursor;Lcom/evancharlton/mileage/dao/Vehicle;)V
    .locals 11
    .param p1, "generator"    # Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "num":I
    const-wide/16 v1, 0x0

    .line 20
    .local v1, "last_odometer":D
    const-wide v3, -0x3f3c780000000000L    # -10000.0

    .line 21
    .local v3, "max_distance":D
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_3

    .line 22
    invoke-virtual {p1}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 23
    goto :goto_1

    .line 25
    :cond_0
    const/4 v5, 0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    .line 26
    .local v5, "odometer":D
    if-lez v0, :cond_2

    .line 27
    sub-double v7, v5, v1

    .line 28
    .local v7, "distance":D
    cmpl-double v9, v7, v3

    if-lez v9, :cond_1

    .line 29
    move-wide v3, v7

    .line 31
    :cond_1
    const/4 v9, 0x0

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {p0, v9, v10, v3, v4}, Lcom/evancharlton/mileage/charts/MaximumDistanceChart;->addPoint(JD)V

    .line 33
    .end local v7    # "distance":D
    :cond_2
    move-wide v1, v5

    .line 34
    add-int/lit8 v7, v0, 0x1

    .local v7, "num":I
    invoke-virtual {p1, v0}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->update(I)V

    .line 35
    .end local v0    # "num":I
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 36
    .end local v5    # "odometer":D
    nop

    .line 20
    move v0, v7

    goto :goto_0

    .line 37
    .end local v7    # "num":I
    .restart local v0    # "num":I
    :cond_3
    :goto_1
    return-void
.end method
