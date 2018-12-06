.class final Lcom/artfulbits/aiCharts/Base/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Base/m$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/text/SimpleDateFormat;


# instance fields
.field public final a:Ljava/lang/String;

.field private d:[Lcom/artfulbits/aiCharts/Base/m$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/m;->c:Ljava/text/SimpleDateFormat;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    const-string v1, "LABEL"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    const-string v1, "XVALUE"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    const-string v1, "YVALUE"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    const-string v1, "SERIESNAME"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    const-string v1, "XDATE"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    const-string v1, "INDEX"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    const-string v1, "AXISLABEL"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    const-string v1, "PERCENT"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    const-string v1, "AVERAGE"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    const-string v1, "MIN"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    const-string v1, "MAX"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    const-string v1, "TAG"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/m;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    move-object v4, v2

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_6

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x27

    if-ne v2, v6, :cond_2

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    :goto_1
    if-eq v5, v6, :cond_0

    if-ge v2, v0, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v7, v5

    move v5, v2

    move v2, v7

    goto :goto_1

    :cond_2
    const/16 v6, 0x7b

    if-ne v2, v6, :cond_5

    new-instance v2, Lcom/artfulbits/aiCharts/Base/m$a;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/artfulbits/aiCharts/Base/m$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_2
    const/16 v6, 0x7d

    if-eq v5, v6, :cond_4

    if-ge v4, v0, :cond_3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v7, v5

    move v5, v4

    move v4, v7

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing element format"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/artfulbits/aiCharts/Base/m;->a(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/m$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v7, v4

    move-object v4, v2

    move v2, v7

    goto :goto_0

    :cond_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v5

    goto :goto_0

    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Lcom/artfulbits/aiCharts/Base/m$a;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/artfulbits/aiCharts/Base/m$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    new-array p1, v3, [Lcom/artfulbits/aiCharts/Base/m$a;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/artfulbits/aiCharts/Base/m$a;

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/m;->d:[Lcom/artfulbits/aiCharts/Base/m$a;

    return-void
.end method

.method protected static a(D)D
    .locals 5

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double p0, p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    div-double/2addr p0, v0

    return-wide p0

    :cond_1
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/artfulbits/aiCharts/Base/MathUtils;->round(DI)D

    move-result-wide p0

    return-wide p0
.end method

.method private static a(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/m$a;
    .locals 5

    sget-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, 0x0

    if-ltz v0, :cond_1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v0, v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :cond_2
    new-instance p0, Lcom/artfulbits/aiCharts/Base/m$a;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, v3, v2}, Lcom/artfulbits/aiCharts/Base/m$a;-><init>(IILjava/lang/String;)V

    return-object p0

    :cond_3
    return-object v2
.end method

.method private static a(Ljava/lang/StringBuilder;DLcom/artfulbits/aiCharts/Base/m$a;)V
    .locals 2

    iget-object v0, p3, Lcom/artfulbits/aiCharts/Base/m$a;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/artfulbits/aiCharts/Base/m;->a(D)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    iget-object v0, p3, Lcom/artfulbits/aiCharts/Base/m$a;->d:Ljava/text/Format;

    if-nez v0, :cond_1

    new-instance v0, Ljava/text/DecimalFormat;

    iget-object v1, p3, Lcom/artfulbits/aiCharts/Base/m$a;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p3, Lcom/artfulbits/aiCharts/Base/m$a;->d:Ljava/text/Format;

    :cond_1
    iget-object p3, p3, Lcom/artfulbits/aiCharts/Base/m$a;->d:Ljava/text/Format;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final a(Lcom/artfulbits/aiCharts/Base/ChartPoint;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/m;->d:[Lcom/artfulbits/aiCharts/Base/m$a;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    iget v5, v4, Lcom/artfulbits/aiCharts/Base/m$a;->a:I

    const/16 v6, 0xc

    if-eq v5, v6, :cond_2

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    iget v7, v4, Lcom/artfulbits/aiCharts/Base/m$a;->b:I

    invoke-virtual {p1, v7}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v7

    mul-double v7, v7, v5

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getSeries()Lcom/artfulbits/aiCharts/Base/ChartSeries;

    move-result-object v5

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v5

    iget v6, v4, Lcom/artfulbits/aiCharts/Base/m$a;->b:I

    invoke-virtual {v5, v6}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->getSum(I)D

    move-result-wide v5

    div-double/2addr v7, v5

    invoke-static {v0, v7, v8, v4}, Lcom/artfulbits/aiCharts/Base/m;->a(Ljava/lang/StringBuilder;DLcom/artfulbits/aiCharts/Base/m$a;)V

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getAxisLabel()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :pswitch_2
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getSeries()Lcom/artfulbits/aiCharts/Base/ChartSeries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->indexOf(Lcom/artfulbits/aiCharts/Base/ChartPoint;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_3
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getSeries()Lcom/artfulbits/aiCharts/Base/ChartSeries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :pswitch_4
    iget v5, v4, Lcom/artfulbits/aiCharts/Base/m$a;->b:I

    invoke-virtual {p1, v5}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v5

    goto :goto_1

    :pswitch_5
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v5

    iget-object v7, v4, Lcom/artfulbits/aiCharts/Base/m$a;->c:Ljava/lang/String;

    if-nez v7, :cond_0

    sget-object v4, Lcom/artfulbits/aiCharts/Base/m;->c:Ljava/text/SimpleDateFormat;

    double-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_0
    iget-object v7, v4, Lcom/artfulbits/aiCharts/Base/m$a;->d:Ljava/text/Format;

    if-nez v7, :cond_1

    new-instance v7, Ljava/text/SimpleDateFormat;

    iget-object v8, v4, Lcom/artfulbits/aiCharts/Base/m$a;->c:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v7, v4, Lcom/artfulbits/aiCharts/Base/m$a;->d:Ljava/text/Format;

    :cond_1
    iget-object v4, v4, Lcom/artfulbits/aiCharts/Base/m$a;->d:Ljava/text/Format;

    double-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :pswitch_6
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v5

    :goto_1
    invoke-static {v0, v5, v6, v4}, Lcom/artfulbits/aiCharts/Base/m;->a(Ljava/lang/StringBuilder;DLcom/artfulbits/aiCharts/Base/m$a;)V

    goto :goto_3

    :pswitch_7
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabel()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :pswitch_8
    iget-object v4, v4, Lcom/artfulbits/aiCharts/Base/m$a;->c:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final a(Lcom/artfulbits/aiCharts/Base/ChartSeries;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/m;->d:[Lcom/artfulbits/aiCharts/Base/m$a;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    iget v5, v4, Lcom/artfulbits/aiCharts/Base/m$a;->a:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1

    const/16 v6, 0xc

    if-eq v5, v6, :cond_0

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getLabel()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_1
    iget-object v4, v4, Lcom/artfulbits/aiCharts/Base/m$a;->c:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    instance-of v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/m;->a(Lcom/artfulbits/aiCharts/Base/ChartPoint;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/m;->a(Lcom/artfulbits/aiCharts/Base/ChartSeries;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/m;->d:[Lcom/artfulbits/aiCharts/Base/m$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    iget v4, v3, Lcom/artfulbits/aiCharts/Base/m$a;->a:I

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v3, Lcom/artfulbits/aiCharts/Base/m$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
