.class public Lcom/evancharlton/mileage/charts/TotalVolumeChart;
.super Lcom/evancharlton/mileage/charts/VolumeChart;
.source "TotalVolumeChart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/evancharlton/mileage/charts/VolumeChart;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAxisTitle()Ljava/lang/String;
    .locals 1

    .line 12
    const v0, 0x7f0800db

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/charts/TotalVolumeChart;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected processCursor(Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;Landroid/database/Cursor;Lcom/evancharlton/mileage/dao/Vehicle;)V
    .locals 5
    .param p1, "generator"    # Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, "num":I
    const-wide/16 v1, 0x0

    .line 19
    .local v1, "total_volume":D
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

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

    add-double/2addr v1, v3

    .line 24
    const/4 v3, 0x0

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/evancharlton/mileage/charts/TotalVolumeChart;->addPoint(JD)V

    .line 25
    add-int/lit8 v3, v0, 0x1

    .local v3, "num":I
    invoke-virtual {p1, v0}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->update(I)V

    .line 26
    .end local v0    # "num":I
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 18
    move v0, v3

    goto :goto_0

    .line 28
    .end local v3    # "num":I
    .restart local v0    # "num":I
    :cond_1
    :goto_1
    return-void
.end method
