.class public Lcom/evancharlton/mileage/math/Calculator;
.super Ljava/lang/Object;
.source "Calculator.java"


# static fields
.field private static CURRENCY_SYMBOL:Ljava/lang/String; = null

.field public static final DATE_DATE:I = 0x1

.field public static final DATE_LONG:I = 0x2

.field public static final DATE_MEDIUM:I = 0x3

.field public static final DATE_TIME:I = 0x4

.field public static final DAY_MILLIS:J = 0x5265c00L

.field private static final FORMATTERS:[Ljava/text/DateFormat;

.field public static final GALLONS:I = 0x3

.field public static final GALLONS_PER_100KM:I = 0xc

.field public static final IMPERIAL_GALLONS:I = 0x5

.field public static final IMP_GAL_PER_100KM:I = 0xe

.field public static final KM:I = 0x1

.field public static final KM_PER_GALLON:I = 0x7

.field public static final KM_PER_IMP_GALLON:I = 0x9

.field public static final KM_PER_LITRE:I = 0xb

.field public static final LITRES:I = 0x4

.field public static final LITRES_PER_100KM:I = 0xd

.field public static final MI:I = 0x2

.field public static final MI_PER_GALLON:I = 0x6

.field public static final MI_PER_IMP_GALLON:I = 0x8

.field public static final MI_PER_LITRE:I = 0xa

.field public static final MONTH_MS:J = 0x9a7ec800L

.field public static final YEAR_MS:J = 0x757b12c00L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/evancharlton/mileage/math/Calculator;->CURRENCY_SYMBOL:Ljava/lang/String;

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/text/DateFormat;

    sput-object v0, Lcom/evancharlton/mileage/math/Calculator;->FORMATTERS:[Ljava/text/DateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static averageCostPerDay(Lcom/evancharlton/mileage/dao/FillupSeries;)D
    .locals 6
    .param p0, "series"    # Lcom/evancharlton/mileage/dao/FillupSeries;

    .line 243
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->getTimeRange()J

    move-result-wide v0

    .line 244
    .local v0, "timeRange":J
    long-to-double v2, v0

    const-wide v4, 0x4194997000000000L    # 8.64E7

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 245
    .local v2, "numDays":D
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->getTotalCost()D

    move-result-wide v4

    div-double/2addr v4, v2

    return-wide v4
.end method

.method public static averageCostPerDistance(Lcom/evancharlton/mileage/dao/FillupSeries;)D
    .locals 6
    .param p0, "series"    # Lcom/evancharlton/mileage/dao/FillupSeries;

    .line 222
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 223
    const-wide/16 v0, 0x0

    return-wide v0

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->getTotalCost()D

    move-result-wide v0

    .line 227
    .local v0, "totalCost":D
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->getTotalDistance()D

    move-result-wide v2

    .line 231
    .local v2, "totalDistance":D
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/evancharlton/mileage/dao/FillupSeries;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/dao/Fillup;->getTotalCost()D

    move-result-wide v4

    sub-double/2addr v0, v4

    .line 233
    div-double v4, v0, v2

    return-wide v4
.end method

.method public static averageDistanceBetweenFillups(Lcom/evancharlton/mileage/dao/FillupSeries;)D
    .locals 4
    .param p0, "series"    # Lcom/evancharlton/mileage/dao/FillupSeries;

    .line 210
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->getTotalDistance()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static averageEconomy(Lcom/evancharlton/mileage/dao/Vehicle;Lcom/evancharlton/mileage/dao/Fillup;)D
    .locals 4
    .param p0, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;
    .param p1, "fillup"    # Lcom/evancharlton/mileage/dao/Fillup;

    .line 119
    invoke-virtual {p1}, Lcom/evancharlton/mileage/dao/Fillup;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p1}, Lcom/evancharlton/mileage/dao/Fillup;->isPartial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-wide/16 v0, 0x0

    return-wide v0

    .line 125
    :cond_0
    invoke-virtual {p1}, Lcom/evancharlton/mileage/dao/Fillup;->getPrevious()Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/dao/Fillup;

    .line 126
    .local v0, "clone":Lcom/evancharlton/mileage/dao/Fillup;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/dao/Fillup;->setPrevious(Lcom/evancharlton/mileage/dao/Fillup;)V

    .line 127
    new-instance v1, Lcom/evancharlton/mileage/dao/FillupSeries;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/evancharlton/mileage/dao/Fillup;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/evancharlton/mileage/dao/FillupSeries;-><init>([Lcom/evancharlton/mileage/dao/Fillup;)V

    invoke-static {p0, v1}, Lcom/evancharlton/mileage/math/Calculator;->averageEconomy(Lcom/evancharlton/mileage/dao/Vehicle;Lcom/evancharlton/mileage/dao/FillupSeries;)D

    move-result-wide v1

    return-wide v1

    .line 120
    .end local v0    # "clone":Lcom/evancharlton/mileage/dao/Fillup;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You can\'t calculate economy on one fillup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static averageEconomy(Lcom/evancharlton/mileage/dao/Vehicle;Lcom/evancharlton/mileage/dao/FillupSeries;)D
    .locals 4
    .param p0, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;
    .param p1, "series"    # Lcom/evancharlton/mileage/dao/FillupSeries;

    .line 178
    invoke-virtual {p1}, Lcom/evancharlton/mileage/dao/FillupSeries;->getTotalDistance()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/evancharlton/mileage/dao/FillupSeries;->getEconomyVolume()D

    move-result-wide v2

    invoke-static {p0, v0, v1, v2, v3}, Lcom/evancharlton/mileage/math/Calculator;->getEconomy(Lcom/evancharlton/mileage/dao/Vehicle;DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static averageFillupCost(Lcom/evancharlton/mileage/dao/FillupSeries;)D
    .locals 4
    .param p0, "series"    # Lcom/evancharlton/mileage/dao/FillupSeries;

    .line 218
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->getTotalCost()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->size()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static averageFillupVolume(Lcom/evancharlton/mileage/dao/FillupSeries;)D
    .locals 4
    .param p0, "series"    # Lcom/evancharlton/mileage/dao/FillupSeries;

    .line 214
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->getTotalVolume()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->size()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static averageFuelPerDay(Lcom/evancharlton/mileage/dao/FillupSeries;)D
    .locals 6
    .param p0, "series"    # Lcom/evancharlton/mileage/dao/FillupSeries;

    .line 237
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->getTimeRange()J

    move-result-wide v0

    .line 238
    .local v0, "timeRange":J
    long-to-double v2, v0

    const-wide v4, 0x4194997000000000L    # 8.64E7

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 239
    .local v2, "numDays":D
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->getTotalVolume()D

    move-result-wide v4

    div-double/2addr v4, v2

    return-wide v4
.end method

.method public static averagePrice(Lcom/evancharlton/mileage/dao/FillupSeries;)D
    .locals 7
    .param p0, "series"    # Lcom/evancharlton/mileage/dao/FillupSeries;

    .line 249
    const-wide/16 v0, 0x0

    .line 250
    .local v0, "total":D
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->size()I

    move-result v2

    .line 251
    .local v2, "SIZE":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 252
    invoke-virtual {p0, v3}, Lcom/evancharlton/mileage/dao/FillupSeries;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evancharlton/mileage/dao/Fillup;

    .line 253
    .local v4, "fillup":Lcom/evancharlton/mileage/dao/Fillup;
    invoke-virtual {v4}, Lcom/evancharlton/mileage/dao/Fillup;->getUnitPrice()D

    move-result-wide v5

    add-double/2addr v0, v5

    .line 251
    .end local v4    # "fillup":Lcom/evancharlton/mileage/dao/Fillup;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 255
    .end local v3    # "i":I
    :cond_0
    int-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double v3, v0, v3

    return-wide v3
.end method

.method public static compareEconomies(DIDI)I
    .locals 9
    .param p0, "first"    # D
    .param p2, "firstUnit"    # I
    .param p3, "second"    # D
    .param p5, "secondUnit"    # I

    .line 87
    if-ne p2, p5, :cond_4

    .line 88
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    .line 105
    cmpl-double v3, p0, p3

    if-lez v3, :cond_2

    .line 106
    return v2

    .line 92
    :pswitch_0
    cmpg-double v3, p0, p3

    if-gez v3, :cond_0

    .line 93
    return v2

    .line 94
    :cond_0
    cmpl-double v2, p0, p3

    if-lez v2, :cond_1

    .line 95
    return v1

    .line 97
    :cond_1
    return v0

    .line 107
    :cond_2
    cmpg-double v2, p0, p3

    if-gez v2, :cond_3

    .line 108
    return v1

    .line 110
    :cond_3
    return v0

    .line 113
    :cond_4
    invoke-static {p3, p4, p5, p2}, Lcom/evancharlton/mileage/math/Calculator;->convert(DII)D

    move-result-wide v0

    .line 114
    .local v0, "converted":D
    move-wide v3, p0

    move v5, p2

    move-wide v6, v0

    move v8, p2

    invoke-static/range {v3 .. v8}, Lcom/evancharlton/mileage/math/Calculator;->compareEconomies(DIDI)I

    move-result v2

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static convert(DI)D
    .locals 4
    .param p0, "value"    # D
    .param p2, "to"    # I

    .line 308
    const-wide v0, 0x3ff33717c9a04789L    # 1.20095042

    const-wide v2, 0x3fd0e831e4f6dc8dL    # 0.264172052

    packed-switch p2, :pswitch_data_0

    .line 338
    return-wide p0

    .line 336
    :pswitch_0
    const-wide v0, 0x4049deb6cd8706f0L    # 51.7399537

    mul-double v0, v0, p0

    move-wide p0, v0

    return-wide v0

    .line 334
    :pswitch_1
    const-wide v0, 0x406d66dddd2ae8e2L    # 235.214583

    mul-double v0, v0, p0

    move-wide p0, v0

    return-wide v0

    .line 332
    :pswitch_2
    const-wide v0, 0x404f118d1f37d3acL    # 62.1371192

    mul-double v0, v0, p0

    move-wide p0, v0

    return-wide v0

    .line 328
    :pswitch_3
    const-wide v0, 0x3fdb358df36a92bdL    # 0.425143707

    mul-double v0, v0, p0

    move-wide p0, v0

    return-wide v0

    .line 322
    :pswitch_4
    mul-double v2, v2, p0

    move-wide p0, v2

    return-wide v2

    .line 330
    :pswitch_5
    const-wide v0, 0x3ffeec8340bcb3a5L    # 1.93274236

    mul-double v0, v0, p0

    move-wide p0, v0

    return-wide v0

    .line 324
    :pswitch_6
    mul-double v0, v0, p0

    move-wide p0, v0

    return-wide v0

    .line 326
    :pswitch_7
    const-wide v0, 0x3ff9bfdf7e8038a0L    # 1.609344

    mul-double v0, v0, p0

    move-wide p0, v0

    return-wide v0

    .line 320
    :pswitch_8
    return-wide p0

    .line 318
    :pswitch_9
    div-double v0, p0, v0

    move-wide p0, v0

    return-wide v0

    .line 316
    :pswitch_a
    div-double v0, p0, v2

    move-wide p0, v0

    return-wide v0

    .line 314
    :pswitch_b
    return-wide p0

    .line 310
    :pswitch_c
    return-wide p0

    .line 312
    :pswitch_d
    const-wide v0, 0x3fe3e245d68a2112L    # 0.621371192

    div-double v0, p0, v0

    move-wide p0, v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convert(DII)D
    .locals 2
    .param p0, "value"    # D
    .param p2, "from"    # I
    .param p3, "to"    # I

    .line 262
    const-wide v0, 0x3fe3e245d68a2112L    # 0.621371192

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 294
    :pswitch_1
    const-wide v0, 0x4049deb6cd8706f0L    # 51.7399537

    mul-double p0, p0, v0

    .line 295
    goto :goto_0

    .line 291
    :pswitch_2
    const-wide v0, 0x406d66dddd2ae8e2L    # 235.214583

    mul-double p0, p0, v0

    .line 292
    goto :goto_0

    .line 288
    :pswitch_3
    const-wide v0, 0x404f118d1f37d3acL    # 62.1371192

    mul-double p0, p0, v0

    .line 289
    goto :goto_0

    .line 285
    :pswitch_4
    const-wide v0, 0x4002d131d53a2ea5L    # 2.35214583

    mul-double p0, p0, v0

    .line 286
    goto :goto_0

    .line 282
    :pswitch_5
    const-wide v0, 0x400e4885f8a7f1f7L    # 3.78541178

    mul-double p0, p0, v0

    .line 283
    goto :goto_0

    .line 279
    :pswitch_6
    const-wide v0, 0x3fe08e89794c2d66L    # 0.517399537

    mul-double p0, p0, v0

    .line 280
    goto :goto_0

    .line 276
    :pswitch_7
    const-wide v0, 0x3feaa5439be11c90L    # 0.83267384

    mul-double p0, p0, v0

    .line 277
    goto :goto_0

    .line 273
    :pswitch_8
    mul-double p0, p0, v0

    .line 274
    goto :goto_0

    .line 270
    :pswitch_9
    const-wide v0, 0x3ff33717c9a04789L    # 1.20095042

    mul-double p0, p0, v0

    .line 271
    goto :goto_0

    .line 267
    :pswitch_a
    const-wide v0, 0x3fd0e831e4f6dc8dL    # 0.264172052

    mul-double p0, p0, v0

    .line 268
    goto :goto_0

    .line 264
    :pswitch_b
    mul-double p0, p0, v0

    .line 265
    nop

    .line 302
    :goto_0
    invoke-static {p0, p1, p3}, Lcom/evancharlton/mileage/math/Calculator;->convert(DI)D

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static fillupEconomy(Lcom/evancharlton/mileage/dao/Vehicle;Lcom/evancharlton/mileage/dao/FillupSeries;)D
    .locals 12
    .param p0, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;
    .param p1, "series"    # Lcom/evancharlton/mileage/dao/FillupSeries;

    .line 138
    invoke-virtual {p1}, Lcom/evancharlton/mileage/dao/FillupSeries;->last()Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v0

    .line 140
    .local v0, "current":Lcom/evancharlton/mileage/dao/Fillup;
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->isPartial()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 141
    return-wide v2

    .line 144
    :cond_0
    const-wide/16 v4, 0x0

    .line 145
    .local v4, "nextValidOdometer":D
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->getOdometer()D

    move-result-wide v6

    .line 147
    .local v6, "topOdometer":D
    nop

    .local v2, "volume":D
    :cond_1
    move-wide v1, v2

    .line 148
    .end local v2    # "volume":D
    .local v1, "volume":D
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->getVolume()D

    move-result-wide v8

    add-double v2, v1, v8

    .line 150
    .end local v1    # "volume":D
    .restart local v2    # "volume":D
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->getPrevious()Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->getOdometer()D

    move-result-wide v4

    .line 152
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->isPartial()Z

    move-result v1

    if-nez v1, :cond_1

    .line 153
    nop

    .line 157
    move-wide v1, v2

    .end local v2    # "volume":D
    .restart local v1    # "volume":D
    :cond_2
    const/4 v3, 0x0

    sub-double v8, v6, v4

    .line 158
    .local v8, "distance":D
    invoke-static {p0, v8, v9, v1, v2}, Lcom/evancharlton/mileage/math/Calculator;->getEconomy(Lcom/evancharlton/mileage/dao/Vehicle;DD)D

    move-result-wide v10

    return-wide v10
.end method

.method public static getCurrencySymbol()Ljava/lang/String;
    .locals 1

    .line 413
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrencySymbol(Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;
    .locals 2
    .param p0, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .line 405
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Vehicle;->getCurrency()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "savedCurrency":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    invoke-static {}, Lcom/evancharlton/mileage/math/Calculator;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    .line 409
    :cond_0
    return-object v0
.end method

.method public static getDateString(Landroid/content/Context;ILjava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "date"    # Ljava/util/Date;

    .line 417
    sget-object v0, Lcom/evancharlton/mileage/math/Calculator;->FORMATTERS:[Ljava/text/DateFormat;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 418
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 429
    :pswitch_0
    sget-object v0, Lcom/evancharlton/mileage/math/Calculator;->FORMATTERS:[Ljava/text/DateFormat;

    const/4 v1, 0x4

    invoke-static {p0}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    .line 426
    :pswitch_1
    sget-object v0, Lcom/evancharlton/mileage/math/Calculator;->FORMATTERS:[Ljava/text/DateFormat;

    const/4 v1, 0x3

    invoke-static {p0}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    aput-object v2, v0, v1

    .line 427
    goto :goto_0

    .line 423
    :pswitch_2
    sget-object v0, Lcom/evancharlton/mileage/math/Calculator;->FORMATTERS:[Ljava/text/DateFormat;

    const/4 v1, 0x2

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    aput-object v2, v0, v1

    .line 424
    goto :goto_0

    .line 420
    :pswitch_3
    sget-object v0, Lcom/evancharlton/mileage/math/Calculator;->FORMATTERS:[Ljava/text/DateFormat;

    const/4 v1, 0x1

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    aput-object v2, v0, v1

    .line 421
    nop

    .line 433
    :cond_0
    :goto_0
    sget-object v0, Lcom/evancharlton/mileage/math/Calculator;->FORMATTERS:[Ljava/text/DateFormat;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDistanceUnits(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .line 364
    invoke-virtual {p1}, Lcom/evancharlton/mileage/dao/Vehicle;->getDistanceUnits()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 369
    const v0, 0x7f080127

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 366
    :cond_0
    const v0, 0x7f08011c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDistanceUnitsAbbr(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .line 374
    invoke-virtual {p1}, Lcom/evancharlton/mileage/dao/Vehicle;->getDistanceUnits()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 379
    const v0, 0x7f080128

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 376
    :cond_0
    const v0, 0x7f08011d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getEconomy(Lcom/evancharlton/mileage/dao/Vehicle;DD)D
    .locals 10
    .param p0, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;
    .param p1, "distance"    # D
    .param p3, "volume"    # D

    .line 183
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Vehicle;->getDistanceUnits()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {p1, p2, v0, v1}, Lcom/evancharlton/mileage/math/Calculator;->convert(DII)D

    move-result-wide v0

    .line 184
    .local v0, "miles":D
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Vehicle;->getVolumeUnits()I

    move-result v2

    const/4 v3, 0x3

    invoke-static {p3, p4, v2, v3}, Lcom/evancharlton/mileage/math/Calculator;->convert(DII)D

    move-result-wide v2

    .line 186
    .local v2, "gallons":D
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Vehicle;->getEconomyUnits()I

    move-result v4

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v9, 0x1

    packed-switch v4, :pswitch_data_0

    .line 205
    div-double v4, v0, v2

    return-wide v4

    .line 202
    :pswitch_0
    invoke-static {v2, v3, v8}, Lcom/evancharlton/mileage/math/Calculator;->convert(DI)D

    move-result-wide v7

    mul-double v7, v7, v5

    invoke-static {v0, v1, v9}, Lcom/evancharlton/mileage/math/Calculator;->convert(DI)D

    move-result-wide v4

    div-double/2addr v7, v4

    return-wide v7

    .line 200
    :pswitch_1
    invoke-static {v2, v3, v7}, Lcom/evancharlton/mileage/math/Calculator;->convert(DI)D

    move-result-wide v7

    mul-double v7, v7, v5

    invoke-static {v0, v1, v9}, Lcom/evancharlton/mileage/math/Calculator;->convert(DI)D

    move-result-wide v4

    div-double/2addr v7, v4

    return-wide v7

    .line 198
    :pswitch_2
    mul-double v5, v5, v2

    invoke-static {v0, v1, v9}, Lcom/evancharlton/mileage/math/Calculator;->convert(DI)D

    move-result-wide v7

    div-double/2addr v5, v7

    return-wide v5

    .line 196
    :pswitch_3
    invoke-static {v0, v1, v9}, Lcom/evancharlton/mileage/math/Calculator;->convert(DI)D

    move-result-wide v4

    invoke-static {v2, v3, v7}, Lcom/evancharlton/mileage/math/Calculator;->convert(DI)D

    move-result-wide v6

    div-double/2addr v4, v6

    return-wide v4

    .line 194
    :pswitch_4
    invoke-static {v2, v3, v7}, Lcom/evancharlton/mileage/math/Calculator;->convert(DI)D

    move-result-wide v4

    div-double v4, v0, v4

    return-wide v4

    .line 192
    :pswitch_5
    invoke-static {v0, v1, v9}, Lcom/evancharlton/mileage/math/Calculator;->convert(DI)D

    move-result-wide v4

    invoke-static {v2, v3, v8}, Lcom/evancharlton/mileage/math/Calculator;->convert(DI)D

    move-result-wide v6

    div-double/2addr v4, v6

    return-wide v4

    .line 190
    :pswitch_6
    invoke-static {v2, v3, v8}, Lcom/evancharlton/mileage/math/Calculator;->convert(DI)D

    move-result-wide v4

    div-double v4, v0, v4

    return-wide v4

    .line 188
    :pswitch_7
    invoke-static {v0, v1, v9}, Lcom/evancharlton/mileage/math/Calculator;->convert(DI)D

    move-result-wide v4

    div-double/2addr v4, v2

    return-wide v4

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getEconomyUnitsAbbr(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .line 384
    invoke-virtual {p1}, Lcom/evancharlton/mileage/dao/Vehicle;->getEconomyUnits()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 400
    const v0, 0x7f08012c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 393
    :pswitch_0
    const v0, 0x7f080126

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 396
    :pswitch_1
    const v0, 0x7f080119

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 391
    :pswitch_2
    const v0, 0x7f080122

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 389
    :pswitch_3
    const v0, 0x7f08012d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 387
    :cond_0
    :pswitch_4
    const v0, 0x7f080121

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getVolumeUnits(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .line 342
    invoke-virtual {p1}, Lcom/evancharlton/mileage/dao/Vehicle;->getVolumeUnits()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 348
    const v0, 0x7f080116

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 344
    :cond_0
    const v0, 0x7f080123

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVolumeUnitsAbbr(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .line 353
    invoke-virtual {p1}, Lcom/evancharlton/mileage/dao/Vehicle;->getVolumeUnits()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 359
    const v0, 0x7f080117

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 355
    :cond_0
    const v0, 0x7f080124

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isBetterEconomy(Lcom/evancharlton/mileage/dao/Vehicle;DD)Z
    .locals 3
    .param p0, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;
    .param p1, "first"    # D
    .param p3, "second"    # D

    .line 168
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Vehicle;->getEconomyUnits()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 174
    cmpl-double v0, p1, p3

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 172
    :pswitch_0
    cmpg-double v0, p1, p3

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 174
    :cond_1
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
