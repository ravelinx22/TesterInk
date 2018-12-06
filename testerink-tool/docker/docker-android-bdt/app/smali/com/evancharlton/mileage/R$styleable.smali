.class public final Lcom/evancharlton/mileage/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CursorSpinner:[I

.field public static final CursorSpinner_auto_hide:I = 0x0

.field public static final CursorSpinner_display_field:I = 0x1

.field public static final CursorSpinner_uri:I = 0x2

.field public static final DeltaView:[I

.field public static final DeltaView_hint:I

.field public static final FormattedDateView:[I

.field public static final FormattedDateView_dateFormat:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 522
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/evancharlton/mileage/R$styleable;->CursorSpinner:[I

    .line 566
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x7f030003

    aput v3, v1, v2

    sput-object v1, Lcom/evancharlton/mileage/R$styleable;->DeltaView:[I

    .line 590
    new-array v0, v0, [I

    const v1, 0x7f030001

    aput v1, v0, v2

    sput-object v0, Lcom/evancharlton/mileage/R$styleable;->FormattedDateView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f030000
        0x7f030002
        0x7f030004
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
