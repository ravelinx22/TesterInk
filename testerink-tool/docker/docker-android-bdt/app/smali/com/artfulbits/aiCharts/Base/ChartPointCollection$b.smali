.class final Lcom/artfulbits/aiCharts/Base/ChartPointCollection$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/artfulbits/aiCharts/Base/IItemBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartPointCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/artfulbits/aiCharts/Base/IItemBinder<",
        "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:[I


# direct methods
.method public constructor <init>(I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$b;->a:I

    iput-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$b;->b:[I

    return-void
.end method


# virtual methods
.method public final synthetic bind(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    instance-of p2, p1, Landroid/database/Cursor;

    if-eqz p2, :cond_3

    check-cast p1, Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result p2

    int-to-double v0, p2

    iget-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$b;->b:[I

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$b;->b:[I

    array-length p2, p2

    :goto_0
    new-array p2, p2, [D

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$b;->a:I

    if-ltz v2, :cond_1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$b;->a:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    :cond_1
    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$b;->b:[I

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$b;->b:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$b;->b:[I

    aget v3, v3, v2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    aput-wide v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-direct {p1, v0, v1, p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;-><init>(D[D)V

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
