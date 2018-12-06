.class final Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder$b;
.super Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final c:Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;

.field private final d:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;)V
    .locals 1

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder$b;->d:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder$b;->c:Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;

    return-void
.end method


# virtual methods
.method protected final draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder$b;->c:Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder$b;->c:Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder$b;->c:Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder$b;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    int-to-float p2, p2

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder$b;->c:Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected final measure(Landroid/graphics/Point;)V
    .locals 5

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder$b;->c:Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-le v1, v3, :cond_0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder$b;->c:Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder$b;->d:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder$b;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder$b;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
