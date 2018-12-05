.class public abstract Lcom/evancharlton/mileage/BaseFormActivity;
.super Landroid/app/Activity;
.source "BaseFormActivity.java"


# static fields
.field public static final EXTRA_ITEM_ID:Ljava/lang/String; = "dao_item_id"


# instance fields
.field protected mPreferences:Landroid/content/SharedPreferences;

.field private mSaveBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected canDelete()Z
    .locals 1

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method protected deleted()V
    .locals 0

    .line 138
    invoke-virtual {p0}, Lcom/evancharlton/mileage/BaseFormActivity;->finish()V

    .line 139
    return-void
.end method

.method protected abstract getCreateString()I
.end method

.method protected abstract getDao()Lcom/evancharlton/mileage/dao/Dao;
.end method

.method protected abstract getProjectionArray()[Ljava/lang/String;
.end method

.method protected abstract getUri(J)Landroid/net/Uri;
.end method

.method protected handleInvalidField(Lcom/evancharlton/mileage/exceptions/InvalidFieldException;)V
    .locals 3
    .param p1, "e"    # Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    .line 80
    invoke-virtual {p1}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;->getField()Landroid/widget/TextView;

    move-result-object v0

    .line 81
    .local v0, "field":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p1}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;->getErrorMessage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/BaseFormActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p1}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;->getErrorMessage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/BaseFormActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 88
    :goto_0
    return-void
.end method

.method protected abstract initUI()V
.end method

.method protected onCreate(Landroid/os/Bundle;I)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "layoutResId"    # I

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/BaseFormActivity;->setContentView(I)V

    .line 36
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/BaseFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 37
    .local v0, "stub":Landroid/widget/LinearLayout;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    const-string v1, "com.evancharlton.mileage_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/evancharlton/mileage/BaseFormActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/evancharlton/mileage/BaseFormActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 39
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .line 111
    const v0, 0x7f080026

    if-eq p1, v0, :cond_0

    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08002f

    .line 114
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08002d

    .line 115
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/evancharlton/mileage/BaseFormActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/evancharlton/mileage/BaseFormActivity$3;-><init>(Lcom/evancharlton/mileage/BaseFormActivity;I)V

    .line 116
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/evancharlton/mileage/BaseFormActivity$2;

    invoke-direct {v2, p0, p1}, Lcom/evancharlton/mileage/BaseFormActivity$2;-><init>(Lcom/evancharlton/mileage/BaseFormActivity;I)V

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 113
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 92
    invoke-virtual {p0}, Lcom/evancharlton/mileage/BaseFormActivity;->getDao()Lcom/evancharlton/mileage/dao/Dao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Dao;->isExistingObject()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/evancharlton/mileage/BaseFormActivity;->canDelete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const v0, 0x7f080026

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f040004

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 96
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 101
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f080026

    if-eq v0, v1, :cond_0

    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 103
    :cond_0
    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/BaseFormActivity;->showDialog(I)V

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 10

    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 45
    invoke-virtual {p0}, Lcom/evancharlton/mileage/BaseFormActivity;->initUI()V

    .line 47
    const v0, 0x7f05002d

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/BaseFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/evancharlton/mileage/BaseFormActivity;->mSaveBtn:Landroid/widget/Button;

    .line 48
    iget-object v0, p0, Lcom/evancharlton/mileage/BaseFormActivity;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/BaseFormActivity;->getCreateString()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/BaseFormActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/evancharlton/mileage/BaseFormActivity;->mSaveBtn:Landroid/widget/Button;

    new-instance v1, Lcom/evancharlton/mileage/BaseFormActivity$1;

    invoke-direct {v1, p0}, Lcom/evancharlton/mileage/BaseFormActivity$1;-><init>(Lcom/evancharlton/mileage/BaseFormActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/evancharlton/mileage/BaseFormActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 66
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "dao_item_id"

    invoke-virtual {p0}, Lcom/evancharlton/mileage/BaseFormActivity;->getDao()Lcom/evancharlton/mileage/dao/Dao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Dao;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 67
    .local v1, "id":Ljava/lang/Long;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/evancharlton/mileage/BaseFormActivity;->getDao()Lcom/evancharlton/mileage/dao/Dao;

    move-result-object v4

    invoke-virtual {v4}, Lcom/evancharlton/mileage/dao/Dao;->getId()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 68
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/evancharlton/mileage/BaseFormActivity;->getUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 69
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/evancharlton/mileage/BaseFormActivity;->getProjectionArray()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v2

    invoke-virtual/range {v4 .. v9}, Lcom/evancharlton/mileage/BaseFormActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 70
    .local v3, "cursor":Landroid/database/Cursor;
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 71
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 72
    invoke-virtual {p0}, Lcom/evancharlton/mileage/BaseFormActivity;->getDao()Lcom/evancharlton/mileage/dao/Dao;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/evancharlton/mileage/dao/Dao;->load(Landroid/database/Cursor;)V

    .line 73
    invoke-virtual {p0}, Lcom/evancharlton/mileage/BaseFormActivity;->populateUI()V

    .line 74
    iget-object v4, p0, Lcom/evancharlton/mileage/BaseFormActivity;->mSaveBtn:Landroid/widget/Button;

    const v5, 0x7f080092

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 77
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_0
    return-void
.end method

.method protected abstract populateUI()V
.end method

.method protected postSaveValidation()Z
    .locals 1

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method protected saved()V
    .locals 0

    .line 146
    invoke-virtual {p0}, Lcom/evancharlton/mileage/BaseFormActivity;->finish()V

    .line 147
    return-void
.end method

.method protected abstract setFields()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
        }
    .end annotation
.end method
