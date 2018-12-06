.class public Lcom/evancharlton/mileage/views/CursorSpinner;
.super Landroid/widget/Spinner;
.source "CursorSpinner.java"


# instance fields
.field private mAdapter:Lcom/evancharlton/mileage/adapters/SpinnerCursorAdapter;

.field private final mAutoHide:Z

.field private mCursor:Landroid/database/Cursor;

.field private final mDisplayField:Ljava/lang/String;

.field private final mUriPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    sget-object v0, Lcom/evancharlton/mileage/R$styleable;->CursorSpinner:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 28
    .local v0, "arr":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/evancharlton/mileage/views/CursorSpinner;->mDisplayField:Ljava/lang/String;

    .line 29
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/evancharlton/mileage/views/CursorSpinner;->mUriPath:Ljava/lang/String;

    .line 30
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/evancharlton/mileage/views/CursorSpinner;->mAutoHide:Z

    .line 32
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/evancharlton/mileage/views/CursorSpinner;->filter(Ljava/lang/String;[Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/evancharlton/mileage/views/CursorSpinner;->mUriPath:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 38
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/evancharlton/mileage/views/CursorSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v3, 0x0

    aput-object v1, v4, v3

    iget-object v1, p0, Lcom/evancharlton/mileage/views/CursorSpinner;->mDisplayField:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v1, v4, v8

    const/4 v7, 0x0

    move-object v3, v0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/evancharlton/mileage/views/CursorSpinner;->mCursor:Landroid/database/Cursor;

    .line 42
    iget-object v1, p0, Lcom/evancharlton/mileage/views/CursorSpinner;->mAdapter:Lcom/evancharlton/mileage/adapters/SpinnerCursorAdapter;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/evancharlton/mileage/adapters/SpinnerCursorAdapter;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/views/CursorSpinner;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/evancharlton/mileage/views/CursorSpinner;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/evancharlton/mileage/views/CursorSpinner;->mDisplayField:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/evancharlton/mileage/adapters/SpinnerCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/evancharlton/mileage/views/CursorSpinner;->mAdapter:Lcom/evancharlton/mileage/adapters/SpinnerCursorAdapter;

    goto :goto_0

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/evancharlton/mileage/views/CursorSpinner;->mAdapter:Lcom/evancharlton/mileage/adapters/SpinnerCursorAdapter;

    iget-object v2, p0, Lcom/evancharlton/mileage/views/CursorSpinner;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Lcom/evancharlton/mileage/adapters/SpinnerCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 46
    iget-object v1, p0, Lcom/evancharlton/mileage/views/CursorSpinner;->mAdapter:Lcom/evancharlton/mileage/adapters/SpinnerCursorAdapter;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/adapters/SpinnerCursorAdapter;->notifyDataSetChanged()V

    .line 48
    :goto_0
    iget-object v1, p0, Lcom/evancharlton/mileage/views/CursorSpinner;->mAdapter:Lcom/evancharlton/mileage/adapters/SpinnerCursorAdapter;

    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/views/CursorSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 50
    iget-boolean v1, p0, Lcom/evancharlton/mileage/views/CursorSpinner;->mAutoHide:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/evancharlton/mileage/views/CursorSpinner;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v8, :cond_1

    .line 51
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/views/CursorSpinner;->setVisibility(I)V

    .line 53
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    .line 58
    iget-object v0, p0, Lcom/evancharlton/mileage/views/CursorSpinner;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 59
    return-void
.end method

.method public setSelectedId(J)V
    .locals 6
    .param p1, "id"    # J

    .line 62
    iget-object v0, p0, Lcom/evancharlton/mileage/views/CursorSpinner;->mAdapter:Lcom/evancharlton/mileage/adapters/SpinnerCursorAdapter;

    .line 63
    .local v0, "adapter":Lcom/evancharlton/mileage/adapters/SpinnerCursorAdapter;
    invoke-virtual {v0}, Lcom/evancharlton/mileage/adapters/SpinnerCursorAdapter;->getCount()I

    move-result v1

    .line 64
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 65
    invoke-virtual {v0, v2}, Lcom/evancharlton/mileage/adapters/SpinnerCursorAdapter;->getItemId(I)J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    .line 66
    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/views/CursorSpinner;->setSelection(I)V

    .line 67
    goto :goto_1

    .line 64
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-void
.end method
