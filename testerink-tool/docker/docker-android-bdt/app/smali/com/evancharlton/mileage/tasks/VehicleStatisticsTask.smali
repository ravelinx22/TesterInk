.class public Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;
.super Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;
.source "VehicleStatisticsTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evancharlton/mileage/tasks/AttachableAsyncTask<",
        "Lcom/evancharlton/mileage/VehicleStatisticsActivity;",
        "Landroid/database/Cursor;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VehicleStatisticsTask"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mProgress:I

.field private mTotal:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mProgress:I

    .line 28
    iput v0, p0, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mTotal:I

    return-void
.end method

.method private update(Lcom/evancharlton/mileage/provider/Statistic;D)V
    .locals 1
    .param p1, "statistic"    # Lcom/evancharlton/mileage/provider/Statistic;
    .param p2, "value"    # D

    .line 332
    invoke-virtual {p1, p2, p3}, Lcom/evancharlton/mileage/provider/Statistic;->setValue(D)V

    .line 333
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getAdapter()Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->setValue(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 334
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    .line 335
    return-void
.end method


# virtual methods
.method public attach(Lcom/evancharlton/mileage/VehicleStatisticsActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    .line 32
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;->attach(Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p1}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mContentResolver:Landroid/content/ContentResolver;

    .line 34
    return-void
.end method

.method public bridge synthetic attach(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->attach(Lcom/evancharlton/mileage/VehicleStatisticsActivity;)V

    return-void
.end method

.method protected varargs doInBackground([Landroid/database/Cursor;)Ljava/lang/Integer;
    .locals 171
    .param p1, "cursors"    # [Landroid/database/Cursor;

    .line 44
    move-object/from16 v1, p0

    const-class v2, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;

    monitor-enter v2

    .line 46
    const/4 v3, 0x1

    :try_start_0
    new-array v0, v3, [Ljava/lang/String;

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getVehicle()Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/evancharlton/mileage/dao/Vehicle;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v0, v5

    .line 49
    .local v0, "args":[Ljava/lang/String;
    iget-object v4, v1, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/evancharlton/mileage/provider/tables/CacheTable;->BASE_URI:Landroid/net/Uri;

    const-string v7, "item = ?"

    invoke-virtual {v4, v6, v7, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 51
    const-string v11, "vehicle_id = ?"

    .line 52
    .local v11, "selection":Ljava/lang/String;
    new-array v12, v3, [Ljava/lang/String;

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getVehicle()Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/evancharlton/mileage/dao/Vehicle;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v5

    .line 56
    .end local v0    # "args":[Ljava/lang/String;
    .local v12, "args":[Ljava/lang/String;
    iget-object v8, v1, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    sget-object v10, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->PROJECTION:[Ljava/lang/String;

    const-string v13, "odometer asc"

    .line 57
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v4, v0

    .line 59
    .local v4, "cursor":Landroid/database/Cursor;
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, v1, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mTotal:I

    .line 61
    iget v0, v1, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mTotal:I

    if-gt v0, v3, :cond_0

    .line 62
    const-string v0, "VehicleStatisticsTask"

    const-string v3, "Not enough fillups to calculate statistics"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    monitor-exit v2

    return-object v0

    .line 66
    :cond_0
    const-string v0, "CalculateTask"

    const-string v6, "Recalculating..."

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Lcom/evancharlton/mileage/dao/FillupSeries;

    new-array v6, v5, [Lcom/evancharlton/mileage/dao/Fillup;

    invoke-direct {v0, v6}, Lcom/evancharlton/mileage/dao/FillupSeries;-><init>([Lcom/evancharlton/mileage/dao/Fillup;)V

    move-object v6, v0

    .line 70
    .local v6, "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    const-wide v7, 0x40c3880000000000L    # 10000.0

    .line 71
    .local v7, "MAX":D
    const-wide v9, -0x3f3c780000000000L    # -10000.0

    .line 73
    .local v9, "MIN":D
    const-wide/16 v13, 0x0

    .line 74
    .local v13, "totalVolume":D
    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    .line 75
    .local v15, "firstVolume":D
    const-wide v17, 0x40c3880000000000L    # 10000.0

    .line 76
    .local v17, "minVolume":D
    const-wide v19, -0x3f3c780000000000L    # -10000.0

    .line 78
    .local v19, "maxVolume":D
    const-wide v21, 0x40c3880000000000L    # 10000.0

    .line 79
    .local v21, "minDistance":D
    const-wide v23, -0x3f3c780000000000L    # -10000.0

    .line 81
    .local v23, "maxDistance":D
    const-wide/16 v25, 0x0

    .line 82
    .local v25, "totalCost":D
    const-wide v27, 0x40c3880000000000L    # 10000.0

    .line 83
    .local v27, "minCost":D
    const-wide v29, -0x3f3c780000000000L    # -10000.0

    .line 85
    .local v29, "maxCost":D
    const-wide v31, 0x40c3880000000000L    # 10000.0

    .line 86
    .local v31, "minEconomy":D
    const-wide v33, -0x3f3c780000000000L    # -10000.0

    .line 88
    .local v33, "maxEconomy":D
    const-wide v35, 0x40c3880000000000L    # 10000.0

    .line 89
    .local v35, "minCostPerDistance":D
    const-wide v37, -0x3f3c780000000000L    # -10000.0

    .line 91
    .local v37, "maxCostPerDistance":D
    const-wide v39, 0x40c3880000000000L    # 10000.0

    .line 92
    .local v39, "minPrice":D
    const-wide v41, -0x3f3c780000000000L    # -10000.0

    .line 94
    .local v41, "maxPrice":D
    const-wide v43, 0x40c3880000000000L    # 10000.0

    .line 95
    .local v43, "minLatitude":D
    const-wide v45, -0x3f3c780000000000L    # -10000.0

    .line 96
    .local v45, "maxLatitude":D
    const-wide v47, 0x40c3880000000000L    # 10000.0

    .line 97
    .local v47, "minLongitude":D
    const-wide v49, -0x3f3c780000000000L    # -10000.0

    .line 99
    .local v49, "maxLongitude":D
    const-wide/16 v51, 0x0

    .line 100
    .local v51, "lastMonthCost":D
    const-wide/16 v53, 0x0

    .line 102
    .local v53, "lastYearCost":D
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const-wide v57, 0x757b12c00L

    sub-long v55, v55, v57

    .line 103
    .local v55, "lastYear":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v57

    const-wide v59, 0x9a7ec800L

    sub-long v57, v57, v59

    .line 105
    .local v57, "lastMonth":J
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getVehicle()Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v0

    move-object/from16 v61, v0

    .line 107
    .local v61, "vehicle":Lcom/evancharlton/mileage/dao/Vehicle;
    invoke-virtual/range {v61 .. v61}, Lcom/evancharlton/mileage/dao/Vehicle;->getEconomyUnits()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 117
    .end local v21    # "minDistance":D
    .end local v23    # "maxDistance":D
    .end local v31    # "minEconomy":D
    .end local v33    # "maxEconomy":D
    .end local v35    # "minCostPerDistance":D
    .end local v37    # "maxCostPerDistance":D
    .end local v43    # "minLatitude":D
    .end local v45    # "maxLatitude":D
    .end local v47    # "minLongitude":D
    .end local v49    # "maxLongitude":D
    .end local v51    # "lastMonthCost":D
    .end local v53    # "lastYearCost":D
    .local v62, "minDistance":D
    .local v64, "maxDistance":D
    .local v66, "minEconomy":D
    .local v68, "maxEconomy":D
    .local v70, "minCostPerDistance":D
    .local v72, "maxCostPerDistance":D
    .local v74, "minLatitude":D
    .local v76, "maxLatitude":D
    .local v78, "minLongitude":D
    .local v80, "maxLongitude":D
    .local v82, "lastMonthCost":D
    .local v84, "lastYearCost":D
    :goto_0
    move-wide/from16 v62, v21

    move-wide/from16 v64, v23

    move-wide/from16 v66, v31

    move-wide/from16 v68, v33

    move-wide/from16 v70, v35

    move-wide/from16 v72, v37

    move-wide/from16 v74, v43

    move-wide/from16 v76, v45

    move-wide/from16 v78, v47

    move-wide/from16 v80, v49

    move-wide/from16 v82, v51

    move-wide/from16 v84, v53

    goto :goto_1

    .line 112
    .end local v62    # "minDistance":D
    .end local v64    # "maxDistance":D
    .end local v66    # "minEconomy":D
    .end local v68    # "maxEconomy":D
    .end local v70    # "minCostPerDistance":D
    .end local v72    # "maxCostPerDistance":D
    .end local v74    # "minLatitude":D
    .end local v76    # "maxLatitude":D
    .end local v78    # "minLongitude":D
    .end local v80    # "maxLongitude":D
    .end local v82    # "lastMonthCost":D
    .end local v84    # "lastYearCost":D
    .restart local v21    # "minDistance":D
    .restart local v23    # "maxDistance":D
    .restart local v31    # "minEconomy":D
    .restart local v33    # "maxEconomy":D
    .restart local v35    # "minCostPerDistance":D
    .restart local v37    # "maxCostPerDistance":D
    .restart local v43    # "minLatitude":D
    .restart local v45    # "maxLatitude":D
    .restart local v47    # "minLongitude":D
    .restart local v49    # "maxLongitude":D
    .restart local v51    # "lastMonthCost":D
    .restart local v53    # "lastYearCost":D
    :pswitch_0
    const-wide v31, -0x3f3c780000000000L    # -10000.0

    .line 113
    const-wide v33, 0x40c3880000000000L    # 10000.0

    goto :goto_0

    .line 117
    .end local v21    # "minDistance":D
    .end local v23    # "maxDistance":D
    .end local v31    # "minEconomy":D
    .end local v33    # "maxEconomy":D
    .end local v35    # "minCostPerDistance":D
    .end local v37    # "maxCostPerDistance":D
    .end local v43    # "minLatitude":D
    .end local v45    # "maxLatitude":D
    .end local v47    # "minLongitude":D
    .end local v49    # "maxLongitude":D
    .end local v51    # "lastMonthCost":D
    .end local v53    # "lastYearCost":D
    .restart local v62    # "minDistance":D
    .restart local v64    # "maxDistance":D
    .restart local v66    # "minEconomy":D
    .restart local v68    # "maxEconomy":D
    .restart local v70    # "minCostPerDistance":D
    .restart local v72    # "maxCostPerDistance":D
    .restart local v74    # "minLatitude":D
    .restart local v76    # "maxLatitude":D
    .restart local v78    # "minLongitude":D
    .restart local v80    # "maxLongitude":D
    .restart local v82    # "lastMonthCost":D
    .restart local v84    # "lastYearCost":D
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->stopCalculations()V

    .line 120
    nop

    .line 313
    move-object/from16 v110, v4

    move-object/from16 v154, v6

    move-wide/from16 v88, v7

    move-wide/from16 v96, v9

    move-object/from16 v99, v11

    move-object/from16 v100, v12

    move-wide/from16 v155, v13

    move-object/from16 v131, v61

    move-wide/from16 v7, v62

    move-wide/from16 v5, v64

    move-wide/from16 v119, v66

    move-wide/from16 v11, v68

    move-wide/from16 v113, v70

    move-wide/from16 v115, v72

    move-wide/from16 v3, v74

    move-wide/from16 v9, v76

    move-wide/from16 v157, v78

    move-wide/from16 v13, v80

    move-wide/from16 v117, v82

    move-wide/from16 v111, v84

    goto/16 :goto_18

    .line 123
    :cond_1
    new-instance v0, Lcom/evancharlton/mileage/dao/Fillup;

    invoke-direct {v0, v4}, Lcom/evancharlton/mileage/dao/Fillup;-><init>(Landroid/database/Cursor;)V

    move-object/from16 v86, v0

    .line 124
    .local v86, "fillup":Lcom/evancharlton/mileage/dao/Fillup;
    move-object/from16 v3, v86

    .end local v86    # "fillup":Lcom/evancharlton/mileage/dao/Fillup;
    .local v3, "fillup":Lcom/evancharlton/mileage/dao/Fillup;
    invoke-virtual {v6, v3}, Lcom/evancharlton/mileage/dao/FillupSeries;->add(Lcom/evancharlton/mileage/dao/Fillup;)Z

    .line 126
    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->hasPrevious()Z

    move-result v0

    const-wide/16 v21, 0x0

    if-eqz v0, :cond_b

    .line 127
    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getDistance()D

    move-result-wide v23

    .line 128
    .local v23, "distance":D
    move-object/from16 v87, v6

    move-wide/from16 v5, v64

    .end local v6    # "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    .end local v64    # "maxDistance":D
    .local v5, "maxDistance":D
    .local v87, "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    cmpl-double v0, v23, v5

    if-lez v0, :cond_2

    .line 129
    move-wide/from16 v5, v23

    .line 130
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MAX_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v0, v5, v6}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 135
    move-wide/from16 v88, v7

    goto :goto_2

    .line 132
    :cond_2
    move-wide/from16 v88, v7

    const/4 v7, 0x0

    .end local v7    # "MAX":D
    .local v88, "MAX":D
    new-array v0, v7, [Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    .line 135
    :goto_2
    move-wide/from16 v7, v62

    .end local v62    # "minDistance":D
    .local v7, "minDistance":D
    cmpg-double v0, v23, v7

    if-gez v0, :cond_3

    .line 136
    move-wide/from16 v7, v23

    .line 137
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MIN_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v0, v7, v8}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 142
    move-wide/from16 v90, v5

    goto :goto_3

    .line 139
    :cond_3
    move-wide/from16 v90, v5

    const/4 v5, 0x0

    .end local v5    # "maxDistance":D
    .local v90, "maxDistance":D
    new-array v0, v5, [Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    .line 142
    :goto_3
    move-object/from16 v6, v61

    move-object/from16 v5, v87

    .end local v61    # "vehicle":Lcom/evancharlton/mileage/dao/Vehicle;
    .end local v87    # "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    .local v5, "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    .local v6, "vehicle":Lcom/evancharlton/mileage/dao/Vehicle;
    invoke-static {v6, v5}, Lcom/evancharlton/mileage/math/Calculator;->fillupEconomy(Lcom/evancharlton/mileage/dao/Vehicle;Lcom/evancharlton/mileage/dao/FillupSeries;)D

    move-result-wide v31

    move-wide/from16 v92, v31

    .line 143
    .local v92, "economy":D
    move-wide/from16 v94, v7

    move-wide/from16 v7, v92

    .end local v92    # "economy":D
    .local v7, "economy":D
    .local v94, "minDistance":D
    cmpl-double v0, v7, v21

    if-lez v0, :cond_6

    .line 144
    move-wide/from16 v96, v9

    move-wide/from16 v9, v68

    .end local v68    # "maxEconomy":D
    .local v9, "maxEconomy":D
    .local v96, "MIN":D
    invoke-static {v6, v7, v8, v9, v10}, Lcom/evancharlton/mileage/math/Calculator;->isBetterEconomy(Lcom/evancharlton/mileage/dao/Vehicle;DD)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    move-wide v9, v7

    .line 146
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MAX_ECONOMY:Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v0, v9, v10}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 151
    move-object/from16 v98, v5

    goto :goto_4

    .line 148
    :cond_4
    move-object/from16 v98, v5

    const/4 v5, 0x0

    .end local v5    # "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    .local v98, "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    new-array v0, v5, [Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    .line 151
    .end local v9    # "maxEconomy":D
    .restart local v68    # "maxEconomy":D
    :goto_4
    move-wide/from16 v68, v9

    move-wide/from16 v9, v66

    .end local v66    # "minEconomy":D
    .local v9, "minEconomy":D
    invoke-static {v6, v7, v8, v9, v10}, Lcom/evancharlton/mileage/math/Calculator;->isBetterEconomy(Lcom/evancharlton/mileage/dao/Vehicle;DD)Z

    move-result v0

    if-nez v0, :cond_5

    .line 152
    move-wide v9, v7

    .line 153
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MIN_ECONOMY:Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v0, v9, v10}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    goto :goto_5

    .line 155
    :cond_5
    const/4 v5, 0x0

    new-array v0, v5, [Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    .line 159
    :goto_5
    move-object/from16 v99, v11

    move-object/from16 v100, v12

    goto :goto_6

    .end local v96    # "MIN":D
    .end local v98    # "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    .restart local v5    # "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    .local v9, "MIN":D
    .restart local v66    # "minEconomy":D
    :cond_6
    move-object/from16 v98, v5

    move-wide/from16 v96, v9

    move-object/from16 v99, v11

    move-object/from16 v100, v12

    move-wide/from16 v11, v66

    move-wide/from16 v9, v68

    move-wide v9, v11

    .end local v5    # "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    .end local v11    # "selection":Ljava/lang/String;
    .end local v12    # "args":[Ljava/lang/String;
    .end local v66    # "minEconomy":D
    .local v9, "minEconomy":D
    .restart local v96    # "MIN":D
    .restart local v98    # "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    .local v99, "selection":Ljava/lang/String;
    .local v100, "args":[Ljava/lang/String;
    :goto_6
    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getCostPerDistance()D

    move-result-wide v11

    .line 160
    .local v11, "costPerDistance":D
    move-wide/from16 v101, v9

    move-wide/from16 v9, v72

    .end local v72    # "maxCostPerDistance":D
    .local v9, "maxCostPerDistance":D
    .local v101, "minEconomy":D
    cmpl-double v0, v11, v9

    if-lez v0, :cond_7

    .line 161
    move-wide v9, v11

    .line 162
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MAX_COST_PER_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v0, v9, v10}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    goto :goto_7

    .line 164
    :cond_7
    const/4 v5, 0x0

    new-array v0, v5, [Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    .line 167
    :goto_7
    move-wide/from16 v103, v9

    move-wide/from16 v9, v70

    .end local v70    # "minCostPerDistance":D
    .local v9, "minCostPerDistance":D
    .local v103, "maxCostPerDistance":D
    cmpg-double v0, v11, v9

    if-gez v0, :cond_8

    .line 168
    move-wide v9, v11

    .line 169
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MIN_COST_PER_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v0, v9, v10}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    goto :goto_8

    .line 171
    :cond_8
    const/4 v5, 0x0

    new-array v0, v5, [Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    .line 174
    :goto_8
    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getTimestamp()J

    move-result-wide v31

    .line 175
    .local v31, "timestamp":J
    cmp-long v0, v31, v57

    if-ltz v0, :cond_9

    .line 176
    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getTotalCost()D

    move-result-wide v33

    const/4 v0, 0x0

    move-wide/from16 v105, v9

    move-wide/from16 v9, v82

    .end local v82    # "lastMonthCost":D
    .local v9, "lastMonthCost":D
    .local v105, "minCostPerDistance":D
    add-double v9, v9, v33

    .line 177
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->LAST_MONTH_COST:Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v0, v9, v10}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    goto :goto_9

    .line 179
    .end local v105    # "minCostPerDistance":D
    .local v9, "minCostPerDistance":D
    .restart local v82    # "lastMonthCost":D
    :cond_9
    move-wide/from16 v105, v9

    move-wide/from16 v9, v82

    .end local v82    # "lastMonthCost":D
    .local v9, "lastMonthCost":D
    .restart local v105    # "minCostPerDistance":D
    const/4 v5, 0x0

    new-array v0, v5, [Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    .line 182
    :goto_9
    cmp-long v0, v31, v55

    if-ltz v0, :cond_a

    .line 183
    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getTotalCost()D

    move-result-wide v33

    const/4 v0, 0x0

    move-wide/from16 v107, v9

    move-wide/from16 v9, v84

    .end local v84    # "lastYearCost":D
    .local v9, "lastYearCost":D
    .local v107, "lastMonthCost":D
    add-double v9, v9, v33

    .line 184
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->LAST_YEAR_COST:Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v0, v9, v10}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    goto :goto_a

    .line 186
    .end local v107    # "lastMonthCost":D
    .local v9, "lastMonthCost":D
    .restart local v84    # "lastYearCost":D
    :cond_a
    move-wide/from16 v107, v9

    move-wide/from16 v9, v84

    .end local v84    # "lastYearCost":D
    .local v9, "lastYearCost":D
    .restart local v107    # "lastMonthCost":D
    const/4 v5, 0x0

    new-array v0, v5, [Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    .line 189
    .end local v7    # "economy":D
    .end local v11    # "costPerDistance":D
    .end local v23    # "distance":D
    .end local v31    # "timestamp":J
    :goto_a
    nop

    .line 193
    move-object/from16 v110, v4

    move-object v4, v6

    move-wide/from16 v84, v9

    move-wide/from16 v64, v90

    move-wide/from16 v62, v94

    move-object/from16 v109, v98

    move-wide/from16 v66, v101

    move-wide/from16 v72, v103

    move-wide/from16 v70, v105

    move-wide/from16 v82, v107

    const/4 v11, 0x1

    goto :goto_b

    .line 190
    .end local v88    # "MAX":D
    .end local v90    # "maxDistance":D
    .end local v94    # "minDistance":D
    .end local v96    # "MIN":D
    .end local v98    # "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    .end local v99    # "selection":Ljava/lang/String;
    .end local v100    # "args":[Ljava/lang/String;
    .end local v101    # "minEconomy":D
    .end local v103    # "maxCostPerDistance":D
    .end local v105    # "minCostPerDistance":D
    .end local v107    # "lastMonthCost":D
    .local v6, "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    .local v7, "MAX":D
    .local v9, "MIN":D
    .local v11, "selection":Ljava/lang/String;
    .restart local v12    # "args":[Ljava/lang/String;
    .restart local v61    # "vehicle":Lcom/evancharlton/mileage/dao/Vehicle;
    .restart local v62    # "minDistance":D
    .restart local v64    # "maxDistance":D
    .restart local v66    # "minEconomy":D
    .restart local v70    # "minCostPerDistance":D
    .restart local v72    # "maxCostPerDistance":D
    .restart local v82    # "lastMonthCost":D
    .restart local v84    # "lastYearCost":D
    :cond_b
    move-object/from16 v110, v4

    move-object/from16 v109, v6

    move-wide/from16 v88, v7

    move-wide/from16 v96, v9

    move-object/from16 v99, v11

    move-object/from16 v100, v12

    move-object/from16 v4, v61

    move-wide/from16 v7, v62

    move-wide/from16 v5, v64

    move-wide/from16 v11, v66

    move-wide/from16 v9, v68

    move-wide/from16 v113, v70

    move-wide/from16 v115, v72

    move-wide/from16 v117, v82

    move-wide/from16 v111, v84

    .end local v6    # "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    .end local v12    # "args":[Ljava/lang/String;
    .end local v61    # "vehicle":Lcom/evancharlton/mileage/dao/Vehicle;
    .end local v62    # "minDistance":D
    .end local v64    # "maxDistance":D
    .end local v66    # "minEconomy":D
    .end local v68    # "maxEconomy":D
    .end local v70    # "minCostPerDistance":D
    .end local v72    # "maxCostPerDistance":D
    .end local v82    # "lastMonthCost":D
    .end local v84    # "lastYearCost":D
    .local v4, "vehicle":Lcom/evancharlton/mileage/dao/Vehicle;
    .local v5, "maxDistance":D
    .local v7, "minDistance":D
    .local v9, "maxEconomy":D
    .local v11, "minEconomy":D
    .restart local v88    # "MAX":D
    .restart local v96    # "MIN":D
    .restart local v99    # "selection":Ljava/lang/String;
    .restart local v100    # "args":[Ljava/lang/String;
    .local v109, "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    .local v110, "cursor":Landroid/database/Cursor;
    .local v111, "lastYearCost":D
    .local v113, "minCostPerDistance":D
    .local v115, "maxCostPerDistance":D
    .local v117, "lastMonthCost":D
    move-wide/from16 v119, v11

    const/4 v11, 0x1

    .end local v11    # "minEconomy":D
    .local v119, "minEconomy":D
    new-array v0, v11, [Ljava/lang/Integer;

    const/16 v12, 0x8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v23, 0x0

    aput-object v12, v0, v23

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    .line 193
    move-wide/from16 v64, v5

    move-wide/from16 v62, v7

    move-wide/from16 v68, v9

    move-wide/from16 v84, v111

    move-wide/from16 v70, v113

    move-wide/from16 v72, v115

    move-wide/from16 v82, v117

    move-wide/from16 v66, v119

    .end local v5    # "maxDistance":D
    .end local v7    # "minDistance":D
    .end local v9    # "maxEconomy":D
    .end local v111    # "lastYearCost":D
    .end local v113    # "minCostPerDistance":D
    .end local v115    # "maxCostPerDistance":D
    .end local v117    # "lastMonthCost":D
    .end local v119    # "minEconomy":D
    .restart local v62    # "minDistance":D
    .restart local v64    # "maxDistance":D
    .restart local v66    # "minEconomy":D
    .restart local v68    # "maxEconomy":D
    .restart local v70    # "minCostPerDistance":D
    .restart local v72    # "maxCostPerDistance":D
    .restart local v82    # "lastMonthCost":D
    .restart local v84    # "lastYearCost":D
    :goto_b
    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getVolume()D

    move-result-wide v5

    .line 194
    .local v5, "volume":D
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    cmpl-double v0, v15, v7

    if-nez v0, :cond_c

    .line 195
    move-wide v7, v5

    .line 200
    move-wide v15, v7

    goto :goto_c

    .line 197
    :cond_c
    const/4 v7, 0x0

    new-array v0, v7, [Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    .line 200
    :goto_c
    cmpl-double v0, v5, v19

    if-lez v0, :cond_d

    .line 201
    move-wide v7, v5

    .line 202
    .end local v19    # "maxVolume":D
    .local v7, "maxVolume":D
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MAX_FUEL:Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v0, v7, v8}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 207
    move-wide/from16 v19, v7

    goto :goto_d

    .line 204
    .end local v7    # "maxVolume":D
    .restart local v19    # "maxVolume":D
    :cond_d
    const/4 v7, 0x0

    new-array v0, v7, [Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    .line 207
    :goto_d
    cmpg-double v0, v5, v17

    if-gez v0, :cond_e

    .line 208
    move-wide v7, v5

    .line 209
    .end local v17    # "minVolume":D
    .local v7, "minVolume":D
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MIN_FUEL:Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v0, v7, v8}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 214
    move-wide/from16 v17, v7

    goto :goto_e

    .line 211
    .end local v7    # "minVolume":D
    .restart local v17    # "minVolume":D
    :cond_e
    const/4 v7, 0x0

    new-array v0, v7, [Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    .line 214
    :goto_e
    const/4 v0, 0x0

    add-double/2addr v13, v5

    .line 215
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->TOTAL_FUEL:Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v0, v13, v14}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 217
    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getTotalCost()D

    move-result-wide v7

    .line 218
    .local v7, "cost":D
    cmpl-double v0, v7, v29

    if-lez v0, :cond_f

    .line 219
    move-wide v9, v7

    .line 220
    .end local v29    # "maxCost":D
    .local v9, "maxCost":D
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MAX_COST:Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v0, v9, v10}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 225
    move-wide/from16 v29, v9

    goto :goto_f

    .line 222
    .end local v9    # "maxCost":D
    .restart local v29    # "maxCost":D
    :cond_f
    const/4 v9, 0x0

    new-array v0, v9, [Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    .line 225
    :goto_f
    cmpg-double v0, v7, v27

    if-gez v0, :cond_10

    .line 226
    move-wide v9, v7

    .line 227
    .end local v27    # "minCost":D
    .local v9, "minCost":D
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MIN_COST:Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v0, v9, v10}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 232
    move-wide/from16 v27, v9

    goto :goto_10

    .line 229
    .end local v9    # "minCost":D
    .restart local v27    # "minCost":D
    :cond_10
    const/4 v9, 0x0

    new-array v0, v9, [Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    .line 232
    :goto_10
    const/4 v0, 0x0

    add-double v9, v25, v7

    .line 233
    .end local v25    # "totalCost":D
    .local v9, "totalCost":D
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->TOTAL_COST:Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v0, v9, v10}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 235
    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getUnitPrice()D

    move-result-wide v23

    .line 236
    .local v23, "price":D
    cmpl-double v0, v23, v41

    if-lez v0, :cond_11

    .line 237
    move-wide/from16 v121, v23

    .line 238
    .end local v41    # "maxPrice":D
    .local v121, "maxPrice":D
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MAX_PRICE:Lcom/evancharlton/mileage/provider/Statistic;

    move-wide/from16 v11, v121

    .end local v121    # "maxPrice":D
    .local v11, "maxPrice":D
    invoke-direct {v1, v0, v11, v12}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 243
    move-wide/from16 v41, v11

    goto :goto_11

    .line 240
    .end local v11    # "maxPrice":D
    .restart local v41    # "maxPrice":D
    :cond_11
    const/4 v11, 0x0

    new-array v0, v11, [Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    .line 243
    :goto_11
    cmpg-double v0, v23, v39

    if-gez v0, :cond_12

    .line 244
    move-wide/from16 v11, v23

    .line 245
    .end local v39    # "minPrice":D
    .local v11, "minPrice":D
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MIN_PRICE:Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v0, v11, v12}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 250
    move-wide/from16 v39, v11

    goto :goto_12

    .line 247
    .end local v11    # "minPrice":D
    .restart local v39    # "minPrice":D
    :cond_12
    const/4 v11, 0x0

    new-array v0, v11, [Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    .line 250
    :goto_12
    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getLatitude()D

    move-result-wide v11

    .line 251
    .local v11, "latitude":D
    move-wide/from16 v123, v9

    move-wide/from16 v9, v76

    .end local v76    # "maxLatitude":D
    .local v9, "maxLatitude":D
    .local v123, "totalCost":D
    cmpl-double v0, v11, v9

    if-lez v0, :cond_13

    cmpl-double v0, v11, v21

    if-eqz v0, :cond_13

    .line 252
    move-wide v9, v11

    .line 253
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->NORTH:Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v0, v9, v10}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 258
    move-wide/from16 v125, v5

    goto :goto_13

    .line 255
    :cond_13
    move-wide/from16 v125, v5

    const/4 v5, 0x0

    .end local v5    # "volume":D
    .local v125, "volume":D
    new-array v0, v5, [Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    .line 258
    .end local v9    # "maxLatitude":D
    .restart local v76    # "maxLatitude":D
    :goto_13
    move-wide/from16 v76, v9

    move-wide/from16 v5, v74

    .end local v74    # "minLatitude":D
    .local v5, "minLatitude":D
    cmpg-double v0, v11, v5

    if-gez v0, :cond_14

    cmpl-double v0, v11, v21

    if-eqz v0, :cond_14

    .line 259
    move-wide v5, v11

    .line 260
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->SOUTH:Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v0, v5, v6}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    goto :goto_14

    .line 262
    :cond_14
    const/4 v9, 0x0

    new-array v0, v9, [Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    .line 265
    :goto_14
    move-wide/from16 v74, v5

    .end local v5    # "minLatitude":D
    .restart local v74    # "minLatitude":D
    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getLongitude()D

    move-result-wide v5

    .line 266
    .local v5, "longitude":D
    move-wide/from16 v9, v80

    .end local v80    # "maxLongitude":D
    .local v9, "maxLongitude":D
    cmpl-double v0, v5, v9

    if-lez v0, :cond_15

    cmpl-double v0, v5, v21

    if-eqz v0, :cond_15

    .line 267
    move-wide v9, v5

    .line 268
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->EAST:Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v0, v9, v10}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 273
    move-wide/from16 v127, v7

    goto :goto_15

    .line 270
    :cond_15
    move-wide/from16 v127, v7

    const/4 v7, 0x0

    .end local v7    # "cost":D
    .local v127, "cost":D
    new-array v0, v7, [Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    .line 273
    .end local v9    # "maxLongitude":D
    .restart local v80    # "maxLongitude":D
    :goto_15
    move-wide/from16 v80, v9

    move-wide/from16 v7, v78

    .end local v78    # "minLongitude":D
    .local v7, "minLongitude":D
    cmpg-double v0, v5, v7

    if-gez v0, :cond_16

    cmpl-double v0, v5, v21

    if-eqz v0, :cond_16

    .line 274
    move-wide v7, v5

    .line 275
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->WEST:Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v0, v7, v8}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    goto :goto_16

    .line 277
    :cond_16
    const/4 v9, 0x0

    new-array v0, v9, [Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    .line 280
    :goto_16
    move-wide/from16 v78, v7

    .end local v7    # "minLongitude":D
    .restart local v78    # "minLongitude":D
    invoke-virtual/range {v109 .. v109}, Lcom/evancharlton/mileage/dao/FillupSeries;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double v7, v13, v7

    .line 281
    .local v7, "avgFuel":D
    :try_start_1
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->AVG_FUEL:Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v0, v7, v8}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 283
    move-object/from16 v9, v109

    .end local v109    # "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    .local v9, "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    invoke-static {v4, v9}, Lcom/evancharlton/mileage/math/Calculator;->averageEconomy(Lcom/evancharlton/mileage/dao/Vehicle;Lcom/evancharlton/mileage/dao/FillupSeries;)D

    move-result-wide v21

    move-wide/from16 v129, v21

    .line 284
    .local v129, "avgEconomy":D
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->AVG_ECONOMY:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v131, v4

    move-wide/from16 v132, v5

    move-wide/from16 v4, v129

    .end local v5    # "longitude":D
    .end local v129    # "avgEconomy":D
    .local v4, "avgEconomy":D
    .local v131, "vehicle":Lcom/evancharlton/mileage/dao/Vehicle;
    .local v132, "longitude":D
    invoke-direct {v1, v0, v4, v5}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 286
    invoke-static {v9}, Lcom/evancharlton/mileage/math/Calculator;->averageDistanceBetweenFillups(Lcom/evancharlton/mileage/dao/FillupSeries;)D

    move-result-wide v21

    move-wide/from16 v134, v21

    .line 287
    .local v134, "avgDistance":D
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->AVG_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    move-wide/from16 v136, v4

    move-wide/from16 v4, v134

    .end local v134    # "avgDistance":D
    .local v4, "avgDistance":D
    .local v136, "avgEconomy":D
    invoke-direct {v1, v0, v4, v5}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 289
    invoke-static {v9}, Lcom/evancharlton/mileage/math/Calculator;->averageFillupCost(Lcom/evancharlton/mileage/dao/FillupSeries;)D

    move-result-wide v21

    move-wide/from16 v138, v21

    .line 290
    .local v138, "avgCost":D
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->AVG_COST:Lcom/evancharlton/mileage/provider/Statistic;

    move-wide/from16 v140, v4

    move-wide/from16 v4, v138

    .end local v138    # "avgCost":D
    .local v4, "avgCost":D
    .local v140, "avgDistance":D
    invoke-direct {v1, v0, v4, v5}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 292
    invoke-static {v9}, Lcom/evancharlton/mileage/math/Calculator;->averageCostPerDistance(Lcom/evancharlton/mileage/dao/FillupSeries;)D

    move-result-wide v21

    move-wide/from16 v142, v21

    .line 293
    .local v142, "avgCostPerDistance":D
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->AVG_COST_PER_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    move-wide/from16 v144, v4

    move-wide/from16 v4, v142

    .end local v142    # "avgCostPerDistance":D
    .local v4, "avgCostPerDistance":D
    .local v144, "avgCost":D
    invoke-direct {v1, v0, v4, v5}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 295
    invoke-static {v9}, Lcom/evancharlton/mileage/math/Calculator;->averagePrice(Lcom/evancharlton/mileage/dao/FillupSeries;)D

    move-result-wide v21

    move-wide/from16 v146, v21

    .line 296
    .local v146, "avgPrice":D
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->AVG_PRICE:Lcom/evancharlton/mileage/provider/Statistic;

    move-wide/from16 v148, v4

    move-wide/from16 v4, v146

    .end local v146    # "avgPrice":D
    .local v4, "avgPrice":D
    .local v148, "avgCostPerDistance":D
    invoke-direct {v1, v0, v4, v5}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 298
    invoke-static {v9}, Lcom/evancharlton/mileage/math/Calculator;->averageFuelPerDay(Lcom/evancharlton/mileage/dao/FillupSeries;)D

    move-result-wide v21

    .line 299
    .local v21, "fuelPerDay":D
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->FUEL_PER_YEAR:Lcom/evancharlton/mileage/provider/Statistic;

    const-wide v25, 0x4076d00000000000L    # 365.0

    move-wide/from16 v150, v4

    .end local v4    # "avgPrice":D
    .local v150, "avgPrice":D
    mul-double v4, v21, v25

    invoke-direct {v1, v0, v4, v5}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 301
    invoke-static {v9}, Lcom/evancharlton/mileage/math/Calculator;->averageCostPerDay(Lcom/evancharlton/mileage/dao/FillupSeries;)D

    move-result-wide v4

    .line 302
    .local v4, "costPerDay":D
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->AVG_MONTHLY_COST:Lcom/evancharlton/mileage/provider/Statistic;

    const-wide/high16 v31, 0x403e000000000000L    # 30.0

    move-wide/from16 v152, v7

    .end local v7    # "avgFuel":D
    .local v152, "avgFuel":D
    mul-double v6, v4, v31

    invoke-direct {v1, v0, v6, v7}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 303
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->AVG_YEARLY_COST:Lcom/evancharlton/mileage/provider/Statistic;

    mul-double v6, v4, v25

    invoke-direct {v1, v0, v6, v7}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v3, v0}, Lcom/evancharlton/mileage/dao/Fillup;->saveIfChanged(Landroid/content/Context;)Z
    :try_end_2
    .catch Lcom/evancharlton/mileage/exceptions/InvalidFieldException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 309
    goto :goto_17

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
    :try_start_3
    const-string v6, "VehicleStatisticsTask"

    const-string v7, "Couldn\'t save in-memory changes."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    .end local v0    # "e":Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
    .end local v3    # "fillup":Lcom/evancharlton/mileage/dao/Fillup;
    .end local v4    # "costPerDay":D
    .end local v11    # "latitude":D
    .end local v21    # "fuelPerDay":D
    .end local v23    # "price":D
    .end local v125    # "volume":D
    .end local v127    # "cost":D
    .end local v132    # "longitude":D
    .end local v136    # "avgEconomy":D
    .end local v140    # "avgDistance":D
    .end local v144    # "avgCost":D
    .end local v148    # "avgCostPerDistance":D
    .end local v150    # "avgPrice":D
    .end local v152    # "avgFuel":D
    :goto_17
    nop

    .line 117
    move-object v6, v9

    move-wide/from16 v7, v88

    move-wide/from16 v9, v96

    move-object/from16 v11, v99

    move-object/from16 v12, v100

    move-object/from16 v4, v110

    move-wide/from16 v25, v123

    move-object/from16 v61, v131

    const/4 v3, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1

    .line 313
    .end local v88    # "MAX":D
    .end local v96    # "MIN":D
    .end local v99    # "selection":Ljava/lang/String;
    .end local v100    # "args":[Ljava/lang/String;
    .end local v110    # "cursor":Landroid/database/Cursor;
    .end local v123    # "totalCost":D
    .end local v131    # "vehicle":Lcom/evancharlton/mileage/dao/Vehicle;
    .local v4, "cursor":Landroid/database/Cursor;
    .restart local v6    # "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    .local v7, "MAX":D
    .local v9, "MIN":D
    .local v11, "selection":Ljava/lang/String;
    .restart local v12    # "args":[Ljava/lang/String;
    .restart local v25    # "totalCost":D
    .restart local v61    # "vehicle":Lcom/evancharlton/mileage/dao/Vehicle;
    :cond_17
    move-object/from16 v110, v4

    move-object/from16 v154, v6

    move-wide/from16 v88, v7

    move-wide/from16 v96, v9

    move-object/from16 v99, v11

    move-object/from16 v100, v12

    move-wide/from16 v155, v13

    move-object/from16 v131, v61

    move-wide/from16 v7, v62

    move-wide/from16 v5, v64

    move-wide/from16 v119, v66

    move-wide/from16 v11, v68

    move-wide/from16 v113, v70

    move-wide/from16 v115, v72

    move-wide/from16 v3, v74

    move-wide/from16 v9, v76

    move-wide/from16 v157, v78

    move-wide/from16 v13, v80

    move-wide/from16 v117, v82

    move-wide/from16 v111, v84

    .end local v4    # "cursor":Landroid/database/Cursor;
    .end local v6    # "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    .end local v12    # "args":[Ljava/lang/String;
    .end local v61    # "vehicle":Lcom/evancharlton/mileage/dao/Vehicle;
    .end local v62    # "minDistance":D
    .end local v64    # "maxDistance":D
    .end local v66    # "minEconomy":D
    .end local v68    # "maxEconomy":D
    .end local v70    # "minCostPerDistance":D
    .end local v72    # "maxCostPerDistance":D
    .end local v74    # "minLatitude":D
    .end local v76    # "maxLatitude":D
    .end local v78    # "minLongitude":D
    .end local v80    # "maxLongitude":D
    .end local v82    # "lastMonthCost":D
    .end local v84    # "lastYearCost":D
    .local v3, "minLatitude":D
    .local v5, "maxDistance":D
    .local v7, "minDistance":D
    .local v9, "maxLatitude":D
    .local v11, "maxEconomy":D
    .local v13, "maxLongitude":D
    .restart local v88    # "MAX":D
    .restart local v96    # "MIN":D
    .restart local v99    # "selection":Ljava/lang/String;
    .restart local v100    # "args":[Ljava/lang/String;
    .restart local v110    # "cursor":Landroid/database/Cursor;
    .restart local v111    # "lastYearCost":D
    .restart local v113    # "minCostPerDistance":D
    .restart local v115    # "maxCostPerDistance":D
    .restart local v117    # "lastMonthCost":D
    .restart local v119    # "minEconomy":D
    .restart local v131    # "vehicle":Lcom/evancharlton/mileage/dao/Vehicle;
    .local v154, "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    .local v155, "totalVolume":D
    .local v157, "minLongitude":D
    :goto_18
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MAX_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v0, v5, v6}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 314
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MIN_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v0, v7, v8}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 315
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MAX_ECONOMY:Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v0, v11, v12}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 316
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MIN_ECONOMY:Lcom/evancharlton/mileage/provider/Statistic;

    move-wide/from16 v159, v5

    move-wide/from16 v5, v119

    .end local v119    # "minEconomy":D
    .local v5, "minEconomy":D
    .local v159, "maxDistance":D
    invoke-direct {v1, v0, v5, v6}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 317
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MAX_COST_PER_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    move-wide/from16 v161, v5

    move-wide/from16 v5, v115

    .end local v115    # "maxCostPerDistance":D
    .local v5, "maxCostPerDistance":D
    .local v161, "minEconomy":D
    invoke-direct {v1, v0, v5, v6}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 318
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MIN_COST_PER_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    move-wide/from16 v163, v5

    move-wide/from16 v5, v113

    .end local v113    # "minCostPerDistance":D
    .local v5, "minCostPerDistance":D
    .local v163, "maxCostPerDistance":D
    invoke-direct {v1, v0, v5, v6}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 319
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->LAST_MONTH_COST:Lcom/evancharlton/mileage/provider/Statistic;

    move-wide/from16 v165, v5

    move-wide/from16 v5, v117

    .end local v117    # "lastMonthCost":D
    .local v5, "lastMonthCost":D
    .local v165, "minCostPerDistance":D
    invoke-direct {v1, v0, v5, v6}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 320
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->LAST_YEAR_COST:Lcom/evancharlton/mileage/provider/Statistic;

    move-wide/from16 v167, v5

    move-wide/from16 v5, v111

    .end local v111    # "lastYearCost":D
    .local v5, "lastYearCost":D
    .local v167, "lastMonthCost":D
    invoke-direct {v1, v0, v5, v6}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 321
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->NORTH:Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v0, v9, v10}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 322
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->SOUTH:Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v0, v3, v4}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 323
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->EAST:Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v0, v13, v14}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 324
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->WEST:Lcom/evancharlton/mileage/provider/Statistic;

    move-wide/from16 v169, v3

    move-wide/from16 v3, v157

    .end local v157    # "minLongitude":D
    .local v3, "minLongitude":D
    .local v169, "minLatitude":D
    invoke-direct {v1, v0, v3, v4}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 326
    invoke-interface/range {v110 .. v110}, Landroid/database/Cursor;->close()V

    .line 327
    .end local v3    # "minLongitude":D
    .end local v5    # "lastYearCost":D
    .end local v7    # "minDistance":D
    .end local v9    # "maxLatitude":D
    .end local v11    # "maxEconomy":D
    .end local v13    # "maxLongitude":D
    .end local v15    # "firstVolume":D
    .end local v17    # "minVolume":D
    .end local v19    # "maxVolume":D
    .end local v25    # "totalCost":D
    .end local v27    # "minCost":D
    .end local v29    # "maxCost":D
    .end local v39    # "minPrice":D
    .end local v41    # "maxPrice":D
    .end local v55    # "lastYear":J
    .end local v57    # "lastMonth":J
    .end local v88    # "MAX":D
    .end local v96    # "MIN":D
    .end local v99    # "selection":Ljava/lang/String;
    .end local v100    # "args":[Ljava/lang/String;
    .end local v110    # "cursor":Landroid/database/Cursor;
    .end local v131    # "vehicle":Lcom/evancharlton/mileage/dao/Vehicle;
    .end local v154    # "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    .end local v155    # "totalVolume":D
    .end local v159    # "maxDistance":D
    .end local v161    # "minEconomy":D
    .end local v163    # "maxCostPerDistance":D
    .end local v165    # "minCostPerDistance":D
    .end local v167    # "lastMonthCost":D
    .end local v169    # "minLatitude":D
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 328
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 327
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, [Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->doInBackground([Landroid/database/Cursor;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "done"    # Ljava/lang/Integer;

    .line 355
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getAdapter()Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getCacheCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->setAdapter(Landroid/database/Cursor;)V

    goto :goto_0

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getAdapter()Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->notifyDataSetChanged()V

    .line 360
    :goto_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->stopCalculations()V

    .line 362
    const-string v0, "VehicleStatisticsTask"

    const-string v1, "Done recalculating!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getAdapter()Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->flush()V

    .line 365
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 38
    const-string v0, "VehicleStatisticsTask"

    const-string v1, "Calculation starting..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->startCalculations()V

    .line 40
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4
    .param p1, "updates"    # [Ljava/lang/Integer;

    .line 339
    iget v0, p0, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mTotal:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 341
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    iget v2, p0, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mTotal:I

    sget-object v3, Lcom/evancharlton/mileage/provider/Statistics;->STATISTICS:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    mul-int v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 342
    iput v1, p0, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mTotal:I

    .line 344
    :cond_0
    array-length v0, p1

    if-lez v0, :cond_1

    .line 345
    iget v0, p0, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mProgress:I

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mProgress:I

    goto :goto_0

    .line 347
    :cond_1
    iget v0, p0, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mProgress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mProgress:I

    .line 349
    :goto_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 350
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getAdapter()Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->notifyDataSetChanged()V

    .line 351
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
