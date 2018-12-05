.class public Lcom/evancharlton/mileage/charts/AveragePriceChart;
.super Lcom/evancharlton/mileage/charts/PriceChart;
.source "AveragePriceChart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/evancharlton/mileage/charts/PriceChart;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAxisTitle()Ljava/lang/String;
    .locals 1

    .line 12
    const v0, 0x7f0800bf

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/charts/AveragePriceChart;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected processCursor(Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;Landroid/database/Cursor;Lcom/evancharlton/mileage/dao/Vehicle;)V
    .locals 6
    .param p1, "generator"    # Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .line 17
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    .local v1, "num":I
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 19
    invoke-virtual {p1}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    goto :goto_1

    .line 22
    :cond_0
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/evancharlton/mileage/charts/AveragePriceChart;->addPoint(JD)V

    .line 23
    add-int/lit8 v2, v1, 0x1

    .local v2, "num":I
    invoke-virtual {p1, v1}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->update(I)V

    .line 24
    .end local v1    # "num":I
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 17
    move v1, v2

    goto :goto_0

    .line 26
    .end local v2    # "num":I
    .restart local v1    # "num":I
    :cond_1
    :goto_1
    return-void
.end method
