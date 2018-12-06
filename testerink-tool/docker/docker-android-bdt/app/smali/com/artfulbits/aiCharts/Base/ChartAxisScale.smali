.class public final Lcom/artfulbits/aiCharts/Base/ChartAxisScale;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Base/ChartAxisScale$a;,
        Lcom/artfulbits/aiCharts/Base/ChartAxisScale$b;,
        Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;,
        Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;
    }
.end annotation


# static fields
.field public static final MARGIN_INTERVAL:D = -1.0

.field public static final MARGIN_NONE:D = 0.0

.field public static final MARGIN_POINT:D = -2.0

.field private static final a:[D

.field private static final b:[D

.field private static final c:[I


# instance fields
.field private final d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

.field private e:Ljava/lang/Double;

.field private f:Ljava/lang/Double;

.field private g:Ljava/lang/Double;

.field private h:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

.field private i:D

.field private j:D

.field private k:D

.field private l:D

.field private m:D

.field private n:D

.field private o:D

.field private p:D

.field private q:D

.field private r:I

.field private s:I

.field private t:D

.field private u:Z

.field private v:D

.field private w:D

.field private x:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x5

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->a:[D

    const/4 v0, 0x7

    new-array v1, v0, [D

    fill-array-data v1, :array_1

    sput-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->b:[D

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->c:[I

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
        0x4004000000000000L    # 2.5
        0x4014000000000000L    # 5.0
        0x4024000000000000L    # 10.0
    .end array-data

    :array_1
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x408f400000000000L    # 1000.0
        0x40ed4c0000000000L    # 60000.0
        0x414b774000000000L    # 3600000.0
        0x4194997000000000L    # 8.64E7
        0x41e34fd900000000L    # 2.592E9
        0x426b88d865000000L    # 9.4608E11
    .end array-data

    :array_2
    .array-data 4
        0xe
        0xd
        0xc
        0xa
        0x5
        0x2
        0x1
    .end array-data
.end method

.method protected constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartAxis;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->e:Ljava/lang/Double;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->f:Ljava/lang/Double;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->g:Ljava/lang/Double;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->h:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->i:D

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->j:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->k:D

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->l:D

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->m:D

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->n:D

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    iput-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    const/4 v4, 0x0

    iput v4, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->r:I

    const/4 v5, 0x4

    iput v5, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->s:I

    const-wide/high16 v5, -0x4000000000000000L    # -2.0

    iput-wide v5, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->t:D

    iput-boolean v4, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->u:Z

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->v:D

    iput-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->w:D

    iput-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->x:D

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    return-void
.end method

.method private static a(D)D
    .locals 10

    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double v2, p0, v0

    sget-object v4, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->a:[D

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-wide v7, v4, v6

    cmpg-double v9, v2, v7

    if-gtz v9, :cond_0

    mul-double v7, v7, v0

    return-wide v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-wide p0
.end method

.method static synthetic a(DI)Ljava/util/Calendar;
    .locals 7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    double-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, -0x1

    if-eq p2, v2, :cond_3

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-eq p2, v3, :cond_1

    const/16 v4, 0xa

    if-eq p2, v4, :cond_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const/16 v5, 0xe

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    :pswitch_1
    const/16 v5, 0xd

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    :pswitch_2
    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    :pswitch_3
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    :pswitch_4
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    long-to-double v3, v3

    cmpg-double v1, v3, p0

    if-gez v1, :cond_2

    invoke-virtual {v0, p2, v2}, Ljava/util/Calendar;->add(II)V

    :cond_2
    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "intervalType"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(D[I)V
    .locals 6

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->b:[D

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->b:[D

    aget-wide v3, v2, v0

    cmpl-double v2, p0, v3

    if-ltz v2, :cond_0

    const/4 v2, 0x0

    sget-object v3, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->b:[D

    aget-wide v4, v3, v0

    div-double/2addr p0, v4

    invoke-static {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->a(D)D

    move-result-wide p0

    double-to-int p0, p0

    aput p0, p2, v2

    sget-object p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->c:[I

    aget p0, p0, v0

    aput p0, p2, v1

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final coefficientToValue(D)D
    .locals 4

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->v:D

    iget-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->w:D

    mul-double v2, v2, p1

    add-double/2addr v0, v2

    return-wide v0
.end method

.method protected final computeInterval()D
    .locals 4

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getValueTypeInternal()I

    move-result v0

    sget v1, Lcom/artfulbits/aiCharts/Base/ChartAxis;->a:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->r:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_0
    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    return-wide v0

    :pswitch_1
    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    const-wide v2, 0x408f400000000000L    # 1000.0

    :goto_0
    mul-double v0, v0, v2

    return-wide v0

    :pswitch_2
    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    goto :goto_0

    :pswitch_3
    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    const-wide v2, 0x41e34fd900000000L    # 2.592E9

    goto :goto_0

    :pswitch_4
    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    const-wide v2, 0x426b88d865000000L    # 9.4608E11

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    const-wide v2, 0x414b774000000000L    # 3600000.0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    const-wide v2, 0x4194997000000000L    # 8.64E7

    goto :goto_0

    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final computeRange(DD)V
    .locals 0

    iput-wide p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->k:D

    iput-wide p3, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->l:D

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->recalculate()V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanging()V

    return-void
.end method

.method public final contains(D)Z
    .locals 3

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final createIterator()Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getValueTypeInternal()I

    move-result v1

    sget v2, Lcom/artfulbits/aiCharts/Base/ChartAxis;->a:I

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$a;

    iget-wide v4, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    iget-wide v6, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    iget-wide v2, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    double-to-int v8, v2

    iget v9, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->r:I

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$a;-><init>(DDII)V

    return-object v1

    :cond_0
    new-instance v1, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$b;

    iget-wide v11, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    iget-wide v13, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    iget-wide v2, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    move-object v10, v1

    move-wide v15, v2

    invoke-direct/range {v10 .. v16}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$b;-><init>(DDD)V

    return-object v1
.end method

.method public final getDesiredIntervalCount()I
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->s:I

    return v0
.end method

.method public final getInterval()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->g:Ljava/lang/Double;

    return-object v0
.end method

.method public final getIntervalType()Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->h:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    return-object v0
.end method

.method public final getMargin()D
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->t:D

    return-wide v0
.end method

.method public final getRealMaximum()D
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->n:D

    return-wide v0
.end method

.method public final getRealMinimum()D
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->m:D

    return-wide v0
.end method

.method public final getRealSize()D
    .locals 4

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->n:D

    iget-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->m:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public final getVisibleInterval()D
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    return-wide v0
.end method

.method public final getVisibleIntervalType()Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;
    .locals 2

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->r:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Double:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Miliseconds:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Seconds:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Minutes:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Mounth:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Years:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    return-object v0

    :cond_0
    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Hours:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    return-object v0

    :cond_1
    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Days:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getVisibleMaximum()D
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    return-wide v0
.end method

.method public final getVisibleMinimum()D
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    return-wide v0
.end method

.method public final getVisibleSize()D
    .locals 4

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    iget-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public final getZoomPosition()D
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->j:D

    return-wide v0
.end method

.method public final getZoomSize()D
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->i:D

    return-wide v0
.end method

.method protected final isAuto()Z
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->e:Ljava/lang/Double;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->f:Ljava/lang/Double;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isInverted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->u:Z

    return v0
.end method

.method public final mulZoom(D)V
    .locals 8

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getArea()Lcom/artfulbits/aiCharts/Base/ChartArea;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->ensureRefresh()V

    :cond_0
    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    iget-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    iget-wide v4, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    iget-wide v6, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    sub-double/2addr v4, v6

    mul-double p1, p1, v4

    div-double v2, p1, v2

    sub-double/2addr v0, v2

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->setZoom(DD)V

    return-void
.end method

.method protected final recalculate()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getArea()Lcom/artfulbits/aiCharts/Base/ChartArea;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getValueTypeInternal()I

    move-result v3

    sget v4, Lcom/artfulbits/aiCharts/Base/ChartAxis;->a:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->isIndexed()Z

    move-result v4

    iget-object v7, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->e:Ljava/lang/Double;

    if-nez v7, :cond_1

    iget-wide v7, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->k:D

    goto :goto_1

    :cond_1
    iget-object v7, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->e:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    :goto_1
    iget-object v9, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->f:Ljava/lang/Double;

    if-nez v9, :cond_2

    iget-wide v9, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->l:D

    goto :goto_2

    :cond_2
    iget-object v9, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->f:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    :goto_2
    const/4 v11, 0x0

    sub-double v11, v9, v7

    iget v13, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->s:I

    int-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v13

    const/4 v13, -0x1

    if-eqz v4, :cond_3

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_6

    :cond_3
    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->g:Ljava/lang/Double;

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->g:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    if-eqz v3, :cond_7

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->h:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    if-nez v4, :cond_4

    const/16 v4, 0xe

    goto :goto_3

    :cond_4
    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->h:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    iget v4, v4, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Field:I

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_6

    invoke-static {v11, v12, v2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->a(D[I)V

    aget v4, v2, v5

    int-to-double v11, v4

    aget v4, v2, v6

    :goto_3
    move v13, v4

    goto :goto_4

    :cond_6
    invoke-static {v11, v12}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->a(D)D

    move-result-wide v11

    :cond_7
    :goto_4
    iget-wide v14, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->t:D

    const-wide/16 v16, 0x0

    cmpl-double v4, v14, v16

    if-eqz v4, :cond_d

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->e:Ljava/lang/Double;

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->f:Ljava/lang/Double;

    if-nez v4, :cond_d

    :cond_8
    iget-wide v14, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->t:D

    cmpg-double v4, v14, v16

    if-gez v4, :cond_c

    iget-wide v14, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->t:D

    const-wide/high16 v16, -0x4000000000000000L    # -2.0

    cmpl-double v4, v14, v16

    if-nez v4, :cond_a

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->isPrimaryAxis()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartArea;->b()D

    move-result-wide v14

    const-wide v16, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v1, v14, v16

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->e:Ljava/lang/Double;

    if-nez v1, :cond_9

    sub-double/2addr v7, v14

    :cond_9
    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->f:Ljava/lang/Double;

    if-nez v1, :cond_d

    goto :goto_5

    :cond_a
    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->e:Ljava/lang/Double;

    if-nez v1, :cond_b

    invoke-static {v7, v8, v11, v12}, Lcom/artfulbits/aiCharts/Base/MathUtils;->floorTo(DD)D

    move-result-wide v7

    :cond_b
    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->f:Ljava/lang/Double;

    if-nez v1, :cond_d

    invoke-static {v9, v10, v11, v12}, Lcom/artfulbits/aiCharts/Base/MathUtils;->cellingTo(DD)D

    move-result-wide v9

    goto :goto_6

    :cond_c
    iget-wide v14, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->t:D

    sub-double/2addr v7, v14

    iget-wide v14, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->t:D

    :goto_5
    add-double/2addr v9, v14

    :cond_d
    :goto_6
    iput-wide v7, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->m:D

    iput-wide v9, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->n:D

    iget-wide v14, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->i:D

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_e

    iput-wide v7, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    iput-wide v9, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    iput-wide v11, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    iput v13, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->r:I

    goto :goto_7

    :cond_e
    const/4 v1, 0x0

    sub-double v11, v9, v7

    iget-wide v13, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->i:D

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    iget-wide v13, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->j:D

    sub-double v20, v9, v11

    move-wide/from16 v16, v13

    move-wide/from16 v18, v7

    invoke-static/range {v16 .. v21}, Lcom/artfulbits/aiCharts/Base/MathUtils;->clamp(DDD)D

    move-result-wide v7

    iput-wide v7, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    iget-wide v7, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    add-double/2addr v7, v11

    iput-wide v7, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    if-eqz v3, :cond_f

    iget v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->s:I

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v3

    invoke-static {v11, v12, v2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->a(D[I)V

    aget v1, v2, v5

    int-to-double v3, v1

    iput-wide v3, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    aget v1, v2, v6

    iput v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->r:I

    goto :goto_7

    :cond_f
    iget v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->s:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v1

    invoke-static {v11, v12}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->a(D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    :goto_7
    iget-boolean v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->u:Z

    if-eqz v1, :cond_10

    iget-wide v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    iput-wide v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->v:D

    iget-wide v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    iget-wide v3, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    :goto_8
    sub-double/2addr v1, v3

    iput-wide v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->w:D

    goto :goto_9

    :cond_10
    iget-wide v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    iput-wide v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->v:D

    iget-wide v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    iget-wide v3, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    goto :goto_8

    :goto_9
    iget-wide v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->w:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double v14, v3, v1

    iput-wide v14, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->x:D

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanged()V

    return-void
.end method

.method public final resetZoom()V
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->j:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->j:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->j:D

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->i:D

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->recalculate()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanging()V

    :cond_1
    return-void
.end method

.method public final scroll(D)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->setZoomPosition(D)V

    return-void
.end method

.method public final setDateRange(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    long-to-double p1, p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->setRange(DD)V

    return-void
.end method

.method public final setDateRange(Ljava/util/Date;Ljava/util/Date;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    long-to-double p1, p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->setRange(DD)V

    return-void
.end method

.method public final setDesiredIntervalCount(I)V
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->s:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->s:I

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->recalculate()V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanging()V

    :cond_0
    return-void
.end method

.method public final setInterval(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->g:Ljava/lang/Double;

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->recalculate()V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanging()V

    return-void
.end method

.method public final setInterval(Ljava/lang/Double;Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->g:Ljava/lang/Double;

    iput-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->h:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->recalculate()V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanging()V

    return-void
.end method

.method public final setIntervalType(Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->h:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->h:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->recalculate()V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanging()V

    :cond_0
    return-void
.end method

.method public final setInverted(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->u:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->u:Z

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->recalculate()V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanging()V

    :cond_0
    return-void
.end method

.method public final setMargin(D)V
    .locals 3

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->t:D

    cmpl-double v2, v0, p1

    if-eqz v2, :cond_0

    iput-wide p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->t:D

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->recalculate()V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanging()V

    :cond_0
    return-void
.end method

.method public final setMaximum(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->f:Ljava/lang/Double;

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->recalculate()V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanging()V

    return-void
.end method

.method public final setMinimum(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->e:Ljava/lang/Double;

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->recalculate()V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanging()V

    return-void
.end method

.method public final setRange(DD)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->e:Ljava/lang/Double;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->f:Ljava/lang/Double;

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->recalculate()V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanging()V

    return-void
.end method

.method public final setZoom(DD)V
    .locals 3

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->j:D

    cmpl-double v2, v0, p1

    if-nez v2, :cond_0

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->i:D

    cmpl-double v2, v0, p3

    if-eqz v2, :cond_1

    :cond_0
    iput-wide p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->j:D

    iput-wide p3, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->i:D

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->recalculate()V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanging()V

    :cond_1
    return-void
.end method

.method public final setZoomPosition(D)V
    .locals 3

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->i:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->j:D

    cmpl-double v2, v0, p1

    if-eqz v2, :cond_0

    iput-wide p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->j:D

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->recalculate()V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanging()V

    :cond_0
    return-void
.end method

.method public final valueToCoefficient(D)D
    .locals 4

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->x:D

    iget-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->v:D

    sub-double/2addr p1, v2

    mul-double v0, v0, p1

    return-wide v0
.end method

.method public final zoom(D)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->zoomToSize(D)V

    return-void
.end method

.method public final zoom(DD)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->setZoom(DD)V

    return-void
.end method

.method public final zoomRange(DD)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->zoomToRange(DD)V

    return-void
.end method

.method public final zoomToFactor(D)V
    .locals 6

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    iget-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    iget-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->n:D

    iget-wide v4, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->m:D

    sub-double/2addr v2, v4

    mul-double p1, p1, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, p1, v2

    sub-double/2addr v0, v2

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->setZoom(DD)V

    return-void
.end method

.method public final zoomToRange(DD)V
    .locals 2

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    sub-double/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->setZoom(DD)V

    return-void
.end method

.method public final zoomToSize(D)V
    .locals 4

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    iget-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    div-double v2, p1, v2

    sub-double/2addr v0, v2

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->setZoom(DD)V

    return-void
.end method
