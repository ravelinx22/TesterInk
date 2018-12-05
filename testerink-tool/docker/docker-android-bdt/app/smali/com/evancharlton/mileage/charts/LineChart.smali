.class public abstract Lcom/evancharlton/mileage/charts/LineChart;
.super Lcom/evancharlton/mileage/ChartActivity;
.source "LineChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;
    }
.end annotation


# instance fields
.field private mPoints:Lcom/artfulbits/aiCharts/Base/ChartPointCollection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/evancharlton/mileage/ChartActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final addPoint(JD)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "value"    # D

    .line 37
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/evancharlton/mileage/charts/LineChart;->addPoint(Ljava/util/Date;D)V

    .line 38
    return-void
.end method

.method protected final addPoint(Ljava/util/Date;D)V
    .locals 3
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "value"    # D

    .line 33
    iget-object v0, p0, Lcom/evancharlton/mileage/charts/LineChart;->mPoints:Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    const/4 v1, 0x1

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->addDate(Ljava/util/Date;[D)Lcom/artfulbits/aiCharts/Base/ChartPoint;

    .line 34
    return-void
.end method

.method protected abstract createChartGenerator()Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;
.end method

.method protected createSeries()Lcom/artfulbits/aiCharts/Base/ChartSeries;
    .locals 3

    .line 75
    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/charts/LineChart;->getAxisTitle()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/artfulbits/aiCharts/Types/ChartTypes;->Line:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected final createSeries(Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;Lcom/artfulbits/aiCharts/Base/ChartPointCollection;Landroid/database/Cursor;Lcom/evancharlton/mileage/dao/Vehicle;)V
    .locals 0
    .param p1, "generator"    # Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;
    .param p2, "points"    # Lcom/artfulbits/aiCharts/Base/ChartPointCollection;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .line 27
    iput-object p2, p0, Lcom/evancharlton/mileage/charts/LineChart;->mPoints:Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    .line 29
    invoke-virtual {p0, p1, p3, p4}, Lcom/evancharlton/mileage/charts/LineChart;->processCursor(Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;Landroid/database/Cursor;Lcom/evancharlton/mileage/dao/Vehicle;)V

    .line 30
    return-void
.end method

.method protected abstract getAxisTitle()Ljava/lang/String;
.end method

.method protected final getExecuteParameters()[Ljava/lang/Object;
    .locals 1

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getVehicle()Lcom/evancharlton/mileage/dao/Vehicle;
    .locals 6

    .line 44
    sget-object v1, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->BASE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lcom/evancharlton/mileage/charts/LineChart;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "vehicle_id"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 44
    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/evancharlton/mileage/charts/LineChart;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 48
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-direct {v1, v0}, Lcom/evancharlton/mileage/dao/Vehicle;-><init>(Landroid/database/Cursor;)V

    return-object v1
.end method

.method protected abstract processCursor(Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;Landroid/database/Cursor;Lcom/evancharlton/mileage/dao/Vehicle;)V
.end method

.method protected final serializeData()Ljava/lang/Object;
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/evancharlton/mileage/charts/LineChart;->getChart()Lcom/artfulbits/aiCharts/ChartView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/ChartView;->getSeries()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->toArray()[Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-result-object v0

    return-object v0
.end method

.method protected final unserializeData(Ljava/lang/Object;)V
    .locals 6
    .param p1, "saved"    # Ljava/lang/Object;

    .line 58
    move-object v0, p1

    check-cast v0, [Lcom/artfulbits/aiCharts/Base/ChartPoint;

    .line 59
    .local v0, "savedData":[Lcom/artfulbits/aiCharts/Base/ChartPoint;
    if-eqz v0, :cond_1

    .line 60
    new-instance v1, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/charts/LineChart;->getAxisTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartTypes;->Line:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartSeries;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 61
    .local v1, "series":Lcom/artfulbits/aiCharts/Base/ChartSeries;
    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v2

    .line 62
    .local v2, "points":Lcom/artfulbits/aiCharts/Base/ChartPointCollection;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 63
    .local v5, "point":Lcom/artfulbits/aiCharts/Base/ChartPoint;
    invoke-virtual {v2, v5}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->add(Lcom/artfulbits/aiCharts/Base/ChartPoint;)Z

    .line 62
    .end local v5    # "point":Lcom/artfulbits/aiCharts/Base/ChartPoint;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/charts/LineChart;->addChartSeries(Lcom/artfulbits/aiCharts/Base/ChartSeries;)V

    .line 67
    .end local v1    # "series":Lcom/artfulbits/aiCharts/Base/ChartSeries;
    .end local v2    # "points":Lcom/artfulbits/aiCharts/Base/ChartPointCollection;
    :cond_1
    return-void
.end method
