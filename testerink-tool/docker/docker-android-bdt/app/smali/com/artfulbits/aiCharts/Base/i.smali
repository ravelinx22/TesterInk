.class final Lcom/artfulbits/aiCharts/Base/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    check-cast p2, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    iget-wide v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPoint;->a:D

    iget-wide v2, p2, Lcom/artfulbits/aiCharts/Base/ChartPoint;->a:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-wide v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPoint;->a:D

    iget-wide p1, p2, Lcom/artfulbits/aiCharts/Base/ChartPoint;->a:D

    cmpl-double v2, v0, p1

    if-lez v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
