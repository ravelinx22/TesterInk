.class public Lcom/evancharlton/mileage/charts/NorthChart;
.super Lcom/evancharlton/mileage/charts/LatitudeChart;
.source "NorthChart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/evancharlton/mileage/charts/LatitudeChart;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAxisTitle()Ljava/lang/String;
    .locals 1

    .line 12
    const v0, 0x7f0800d7

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/charts/NorthChart;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected processCursor(Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;Landroid/database/Cursor;Lcom/evancharlton/mileage/dao/Vehicle;)V
    .locals 8
    .param p1, "generator"    # Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, "num":I
    const-wide v1, -0x3f3c780000000000L    # -10000.0

    .line 19
    .local v1, "maximum_north":D
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_3

    .line 20
    invoke-virtual {p1}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21
    goto :goto_1

    .line 23
    :cond_0
    const/4 v3, 0x1

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    .line 24
    .local v3, "north":D
    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-eqz v7, :cond_2

    .line 25
    cmpl-double v5, v3, v1

    if-lez v5, :cond_1

    .line 26
    move-wide v1, v3

    .line 28
    :cond_1
    const/4 v5, 0x0

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {p0, v5, v6, v1, v2}, Lcom/evancharlton/mileage/charts/NorthChart;->addPoint(JD)V

    .line 30
    :cond_2
    add-int/lit8 v5, v0, 0x1

    .local v5, "num":I
    invoke-virtual {p1, v0}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->update(I)V

    .line 31
    .end local v0    # "num":I
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 32
    .end local v3    # "north":D
    nop

    .line 18
    move v0, v5

    goto :goto_0

    .line 33
    .end local v5    # "num":I
    .restart local v0    # "num":I
    :cond_3
    :goto_1
    return-void
.end method
