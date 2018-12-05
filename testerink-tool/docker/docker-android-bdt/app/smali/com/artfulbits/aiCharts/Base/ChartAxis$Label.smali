.class public final Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;
.super Lcom/artfulbits/aiCharts/Base/ChartAxis$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartAxis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Label"
.end annotation


# instance fields
.field public final Position:D

.field public final Text:Ljava/lang/String;

.field protected X:F

.field protected Y:F

.field private a:F

.field private b:F

.field protected height:F

.field protected visible:Z

.field protected width:F


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 1

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis$a;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->a:F

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->b:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->visible:Z

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Text:Ljava/lang/String;

    iput-wide p2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Position:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;-><init>(Ljava/lang/String;D)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .locals 2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;-><init>(Ljava/lang/String;D)V

    return-void
.end method


# virtual methods
.method final a(FFI)V
    .locals 2

    and-int/lit8 v0, p3, 0xf

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->width:F

    :goto_0
    sub-float/2addr p1, v0

    :pswitch_2
    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->X:F

    :goto_1
    shr-int/lit8 p1, p3, 0x4

    and-int/lit8 p1, p1, 0xf

    packed-switch p1, :pswitch_data_1

    goto :goto_3

    :pswitch_3
    iput p2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Y:F

    goto :goto_3

    :pswitch_4
    const/high16 p1, 0x3f000000    # 0.5f

    iget p3, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->height:F

    mul-float p3, p3, p1

    sub-float/2addr p2, p3

    :goto_2
    iput p2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Y:F

    return-void

    :pswitch_5
    iget p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->height:F

    sub-float/2addr p2, p1

    goto :goto_2

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method final a(Landroid/graphics/Canvas;Lcom/artfulbits/aiCharts/Base/ChartAxis;)V
    .locals 7

    invoke-static {p2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->a(Lcom/artfulbits/aiCharts/Base/ChartAxis;)Lcom/artfulbits/aiCharts/Base/k;

    move-result-object v0

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->X:F

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->width:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Y:F

    iget v4, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->height:F

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v3, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->a:F

    const/high16 v4, -0x41000000    # -0.5f

    mul-float v3, v3, v4

    iget v4, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->b:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v4, v4, v5

    invoke-static {p2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->b(Lcom/artfulbits/aiCharts/Base/ChartAxis;)Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    sub-float/2addr v4, v5

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/k;->a:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, v0, Lcom/artfulbits/aiCharts/Base/k;->a:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Text:Ljava/lang/String;

    invoke-static {p2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->b(Lcom/artfulbits/aiCharts/Base/ChartAxis;)Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p1, v0, v3, v4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Text:Ljava/lang/String;

    add-float/2addr v1, v3

    add-float/2addr v2, v4

    invoke-static {p2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->b(Lcom/artfulbits/aiCharts/Base/ChartAxis;)Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected final measure(Lcom/artfulbits/aiCharts/Base/ChartAxis;)V
    .locals 4

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->width:F

    iput v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->height:F

    return-void

    :cond_0
    invoke-static {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->a(Lcom/artfulbits/aiCharts/Base/ChartAxis;)Lcom/artfulbits/aiCharts/Base/k;

    move-result-object v0

    invoke-static {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->b(Lcom/artfulbits/aiCharts/Base/ChartAxis;)Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->a:F

    invoke-static {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->b(Lcom/artfulbits/aiCharts/Base/ChartAxis;)Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->b:F

    iget p1, v0, Lcom/artfulbits/aiCharts/Base/k;->a:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->a:F

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->width:F

    iget p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->b:F

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->height:F

    return-void

    :cond_1
    iget p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->a:F

    iget v1, v0, Lcom/artfulbits/aiCharts/Base/k;->b:F

    mul-float p1, p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->b:F

    iget v2, v0, Lcom/artfulbits/aiCharts/Base/k;->c:F

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr p1, v1

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->width:F

    iget p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->a:F

    iget v1, v0, Lcom/artfulbits/aiCharts/Base/k;->c:F

    mul-float p1, p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->b:F

    iget v0, v0, Lcom/artfulbits/aiCharts/Base/k;->b:F

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr p1, v0

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->height:F

    return-void
.end method
