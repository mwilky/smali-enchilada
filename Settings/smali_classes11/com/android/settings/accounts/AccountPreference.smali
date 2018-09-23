.class public Lcom/android/settings/accounts/AccountPreference;
.super Landroid/support/v7/preference/Preference;
.source "AccountPreference.java"


# static fields
.field public static final SYNC_DISABLED:I = 0x1

.field public static final SYNC_ENABLED:I = 0x0

.field public static final SYNC_ERROR:I = 0x2

.field public static final SYNC_IN_PROGRESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AccountPreference"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthorities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowTypeIcon:Z

.field private mStatus:I

.field private mSyncStatusIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/accounts/AccountPreference;->mAccount:Landroid/accounts/Account;

    iput-object p4, p0, Lcom/android/settings/accounts/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    iput-boolean p5, p0, Lcom/android/settings/accounts/AccountPreference;->mShowTypeIcon:Z

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/settings/accounts/AccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountPreference;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountPreference;->setIcon(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountPreference;->setPersistent(Z)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/accounts/AccountPreference;->setSyncStatus(IZ)V

    return-void
.end method

.method private getSyncContentDescription(I)Ljava/lang/String;
    .locals 4

    const v0, 0x7f12008c

    packed-switch p1, :pswitch_data_0

    const-string v1, "AccountPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12008d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12008a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12008b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSyncStatusIcon(I)I
    .locals 4

    packed-switch p1, :pswitch_data_0

    const v0, 0x7f080245

    const-string v1, "AccountPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const v0, 0x7f080245

    goto :goto_0

    :pswitch_1
    const v0, 0x7f080243

    goto :goto_0

    :pswitch_2
    const v0, 0x7f080225

    nop

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getSyncStatusMessage(I)I
    .locals 4

    packed-switch p1, :pswitch_data_0

    const v0, 0x7f12116a

    const-string v1, "AccountPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const v0, 0x7f12116d

    goto :goto_0

    :pswitch_1
    const v0, 0x7f12116a

    goto :goto_0

    :pswitch_2
    const v0, 0x7f121168

    goto :goto_0

    :pswitch_3
    const v0, 0x7f121169

    nop

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthorities()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-boolean v0, p0, Lcom/android/settings/accounts/AccountPreference;->mShowTypeIcon:Z

    if-nez v0, :cond_0

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/accounts/AccountPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/settings/accounts/AccountPreference;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/accounts/AccountPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/settings/accounts/AccountPreference;->getSyncContentDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSyncStatus(IZ)V
    .locals 2

    iget v0, p0, Lcom/android/settings/accounts/AccountPreference;->mStatus:I

    if-ne v0, p1, :cond_0

    const-string v0, "AccountPreference"

    const-string v1, "Status is the same, not changing anything"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput p1, p0, Lcom/android/settings/accounts/AccountPreference;->mStatus:I

    iget-boolean v0, p0, Lcom/android/settings/accounts/AccountPreference;->mShowTypeIcon:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountPreference;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/accounts/AccountPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/settings/accounts/AccountPreference;->getSyncContentDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountPreference;->getSyncStatusMessage(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountPreference;->setSummary(I)V

    :cond_2
    return-void
.end method
