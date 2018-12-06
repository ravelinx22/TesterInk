.class public Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;
.super Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;
.source "LineChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/charts/LineChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LineChartGenerator"
.end annotation


# instance fields
.field private final mActivity:Lcom/evancharlton/mileage/charts/LineChart;

.field private final mProjection:[Ljava/lang/String;

.field private final mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;


# direct methods
.method public constructor <init>(Lcom/evancharlton/mileage/charts/LineChart;Lcom/evancharlton/mileage/dao/Vehicle;[Ljava/lang/String;)V
    .locals 0
    .param p1, "chartActivity"    # Lcom/evancharlton/mileage/charts/LineChart;
    .param p2, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;
    .param p3, "projection"    # [Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->mActivity:Lcom/evancharlton/mileage/charts/LineChart;

    .line 85
    iput-object p2, p0, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    .line 86
    iput-object p3, p0, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->mProjection:[Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->doInBackground([Ljava/lang/Object;)[Lcom/artfulbits/aiCharts/Base/ChartSeries;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)[Lcom/artfulbits/aiCharts/Base/ChartSeries;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->mActivity:Lcom/evancharlton/mileage/charts/LineChart;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/charts/LineChart;->createSeries()Lcom/artfulbits/aiCharts/Base/ChartSeries;

    move-result-object v0

    .line 92
    .local v0, "series":Lcom/artfulbits/aiCharts/Base/ChartSeries;
    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v1

    .line 94
    .local v1, "points":Lcom/artfulbits/aiCharts/Base/ChartPointCollection;
    invoke-virtual {p0}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->getActivity()Lcom/evancharlton/mileage/ChartActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evancharlton/mileage/ChartActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->mProjection:[Ljava/lang/String;

    const-string v6, "vehicle_id = ?"

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    iget-object v8, p0, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    .line 96
    invoke-virtual {v8}, Lcom/evancharlton/mileage/dao/Vehicle;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-string v8, "odometer asc"

    .line 94
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 98
    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0, v4}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->publishProgress([Ljava/lang/Object;)V

    .line 99
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 100
    iget-object v4, p0, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->mActivity:Lcom/evancharlton/mileage/charts/LineChart;

    iget-object v5, p0, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v4, p0, v1, v3, v5}, Lcom/evancharlton/mileage/charts/LineChart;->createSeries(Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;Lcom/artfulbits/aiCharts/Base/ChartPointCollection;Landroid/database/Cursor;Lcom/evancharlton/mileage/dao/Vehicle;)V

    .line 101
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 103
    invoke-virtual {p0}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    const/4 v2, 0x0

    return-object v2

    .line 106
    :cond_0
    new-array v2, v2, [Lcom/artfulbits/aiCharts/Base/ChartSeries;

    aput-object v0, v2, v9

    return-object v2
.end method

.method public final update(I)V
    .locals 3
    .param p1, "update"    # I

    .line 112
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->publishProgress([Ljava/lang/Object;)V

    .line 113
    return-void
.end method
