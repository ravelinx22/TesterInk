.class final Lcom/artfulbits/aiCharts/Base/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/text/DateFormat;

.field private static final b:Ljava/text/DateFormat;

.field private static final c:Ljava/text/NumberFormat;

.field private static final d:Ljava/text/FieldPosition;


# instance fields
.field private final e:Lcom/artfulbits/aiCharts/Base/ChartAxis;

.field private f:Ljava/text/Format;

.field private g:Z

.field private h:Z

.field private i:D

.field private j:Ljava/text/DateFormat;

.field private k:Ljava/text/NumberFormat;

.field private l:Ljava/text/MessageFormat;

.field private final m:Ljava/util/Date;

.field private final n:[Ljava/lang/Object;

.field private final o:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    sput-object v1, Lcom/artfulbits/aiCharts/Base/e;->a:Ljava/text/DateFormat;

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Base/e;->b:Ljava/text/DateFormat;

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Base/e;->c:Ljava/text/NumberFormat;

    new-instance v0, Ljava/text/FieldPosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/e;->d:Ljava/text/FieldPosition;

    return-void
.end method

.method public constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartAxis;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/e;->g:Z

    iput-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/e;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/e;->j:Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/e;->k:Ljava/text/NumberFormat;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/e;->l:Ljava/text/MessageFormat;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/e;->m:Ljava/util/Date;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/e;->n:[Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/e;->o:Ljava/lang/StringBuffer;

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/e;->e:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    return-void
.end method


# virtual methods
.method public final a(D)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/e;->o:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/e;->g:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/e;->m:Ljava/util/Date;

    double-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Ljava/util/Date;->setTime(J)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/e;->j:Ljava/text/DateFormat;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/e;->j:Ljava/text/DateFormat;

    :goto_0
    iget-object p2, p0, Lcom/artfulbits/aiCharts/Base/e;->m:Ljava/util/Date;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/e;->o:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/e;->d:Ljava/text/FieldPosition;

    invoke-virtual {p1, p2, v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_0
    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/e;->l:Ljava/text/MessageFormat;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/e;->n:[Ljava/lang/Object;

    iget-object p2, p0, Lcom/artfulbits/aiCharts/Base/e;->m:Ljava/util/Date;

    aput-object p2, p1, v1

    :goto_1
    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/e;->l:Ljava/text/MessageFormat;

    iget-object p2, p0, Lcom/artfulbits/aiCharts/Base/e;->n:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/e;->o:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/e;->d:Ljava/text/FieldPosition;

    invoke-virtual {p1, p2, v0, v1}, Ljava/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_1
    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/e;->f:Ljava/text/Format;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/e;->f:Ljava/text/Format;

    iget-object p2, p0, Lcom/artfulbits/aiCharts/Base/e;->m:Ljava/util/Date;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/e;->o:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/e;->d:Ljava/text/FieldPosition;

    invoke-virtual {p1, p2, v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_2
    iget-boolean p1, p0, Lcom/artfulbits/aiCharts/Base/e;->h:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/artfulbits/aiCharts/Base/e;->a:Ljava/text/DateFormat;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/artfulbits/aiCharts/Base/e;->b:Ljava/text/DateFormat;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/e;->k:Ljava/text/NumberFormat;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/e;->k:Ljava/text/NumberFormat;

    :goto_2
    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/e;->o:Ljava/lang/StringBuffer;

    sget-object v2, Lcom/artfulbits/aiCharts/Base/e;->d:Ljava/text/FieldPosition;

    invoke-virtual {v0, p1, p2, v1, v2}, Ljava/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/e;->l:Ljava/text/MessageFormat;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/e;->n:[Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v0, v1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/e;->f:Ljava/text/Format;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/e;->f:Ljava/text/Format;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iget-object p2, p0, Lcom/artfulbits/aiCharts/Base/e;->o:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/e;->d:Ljava/text/FieldPosition;

    invoke-virtual {v0, p1, p2, v1}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_7
    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/e;->i:D

    invoke-static {p1, p2, v0, v1}, Lcom/artfulbits/aiCharts/Base/MathUtils;->coerce(DD)D

    move-result-wide p1

    sget-object v0, Lcom/artfulbits/aiCharts/Base/e;->c:Ljava/text/NumberFormat;

    goto :goto_2

    :goto_3
    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/e;->o:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/text/Format;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/e;->f:Ljava/text/Format;

    return-object v0
.end method

.method public final a(Ljava/text/Format;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/e;->j:Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/e;->k:Ljava/text/NumberFormat;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/e;->l:Ljava/text/MessageFormat;

    instance-of v0, p1, Ljava/text/DateFormat;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/e;->j:Ljava/text/DateFormat;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/text/NumberFormat;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/text/NumberFormat;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/e;->k:Ljava/text/NumberFormat;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/text/MessageFormat;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/text/MessageFormat;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/e;->l:Ljava/text/MessageFormat;

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/e;->f:Ljava/text/Format;

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/e;->e:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getValueTypeInternal()I

    move-result v0

    sget v1, Lcom/artfulbits/aiCharts/Base/ChartAxis;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/e;->g:Z

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/e;->e:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleInterval()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/e;->i:D

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/e;->e:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleIntervalType()Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    move-result-object v0

    iget v0, v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Field:I

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Days:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    iget v1, v1, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Field:I

    if-le v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/artfulbits/aiCharts/Base/e;->h:Z

    return-void
.end method
