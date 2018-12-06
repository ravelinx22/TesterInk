.class public Lcom/evancharlton/mileage/adapters/SpinnerCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "SpinnerCursorAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "label"    # Ljava/lang/String;

    .line 10
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v5, v1

    new-array v6, v0, [I

    const v0, 0x1020014

    aput v0, v6, v1

    const v3, 0x1090008

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 15
    const v0, 0x1090009

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/adapters/SpinnerCursorAdapter;->setDropDownViewResource(I)V

    .line 16
    return-void
.end method
