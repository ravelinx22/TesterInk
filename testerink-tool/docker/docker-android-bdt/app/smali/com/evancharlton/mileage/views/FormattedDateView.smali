.class public Lcom/evancharlton/mileage/views/FormattedDateView;
.super Landroid/widget/TextView;
.source "FormattedDateView.java"


# static fields
.field private static final DATE:I = 0x1

.field private static final FMT_DATE:Ljava/lang/String; = "date"

.field private static final FMT_LONG:Ljava/lang/String; = "long"

.field private static final FMT_MEDIUM:Ljava/lang/String; = "medium"

.field private static final FMT_TIME:Ljava/lang/String; = "time"

.field private static final LONG:I = 0x3

.field private static final MEDIUM:I = 0x2

.field private static final TIME:I = 0x4


# instance fields
.field private mFormat:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/evancharlton/mileage/views/FormattedDateView;->mFormat:I

    .line 36
    sget-object v1, Lcom/evancharlton/mileage/R$styleable;->FormattedDateView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 37
    .local v1, "arr":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "format":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 39
    const-string v3, "medium"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/evancharlton/mileage/views/FormattedDateView;->mFormat:I

    goto :goto_0

    .line 41
    :cond_0
    const-string v3, "long"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    const/4 v0, 0x3

    iput v0, p0, Lcom/evancharlton/mileage/views/FormattedDateView;->mFormat:I

    goto :goto_0

    .line 43
    :cond_1
    const-string v3, "time"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 44
    const/4 v0, 0x4

    iput v0, p0, Lcom/evancharlton/mileage/views/FormattedDateView;->mFormat:I

    goto :goto_0

    .line 45
    :cond_2
    const-string v3, "date"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 46
    iput v0, p0, Lcom/evancharlton/mileage/views/FormattedDateView;->mFormat:I

    goto :goto_0

    .line 48
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown date format!"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public setText(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .line 84
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/views/FormattedDateView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .line 56
    iget v0, p0, Lcom/evancharlton/mileage/views/FormattedDateView;->mFormat:I

    packed-switch v0, :pswitch_data_0

    .line 68
    invoke-virtual {p0}, Lcom/evancharlton/mileage/views/FormattedDateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_0

    .line 64
    :pswitch_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/views/FormattedDateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 65
    .local v0, "formatter":Ljava/text/DateFormat;
    goto :goto_0

    .line 61
    .end local v0    # "formatter":Ljava/text/DateFormat;
    :pswitch_1
    invoke-virtual {p0}, Lcom/evancharlton/mileage/views/FormattedDateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 62
    .restart local v0    # "formatter":Ljava/text/DateFormat;
    goto :goto_0

    .line 58
    .end local v0    # "formatter":Ljava/text/DateFormat;
    :pswitch_2
    invoke-virtual {p0}, Lcom/evancharlton/mileage/views/FormattedDateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 59
    .restart local v0    # "formatter":Ljava/text/DateFormat;
    nop

    .line 68
    :goto_0
    nop

    .line 72
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 73
    .local v1, "timestamp":J
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-super {p0, v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v1    # "timestamp":J
    goto :goto_1

    .line 74
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    new-instance v2, Ljava/util/Date;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    goto :goto_1

    .line 77
    :catch_1
    move-exception v2

    .line 78
    .local v2, "ex":Ljava/lang/Exception;
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 81
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
