.class public Lcom/android/settings/notification/NotificationLockscreenPreference;
.super Lcom/android/settings/RestrictedListPreference;
.source "NotificationLockscreenPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;
    }
.end annotation


# instance fields
.field private mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mAllowRemoteInput:Z

.field private mListener:Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;

.field private mRemoteInputCheckBoxEnabled:Z

.field private mShowRemoteInput:Z

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/RestrictedListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mRemoteInputCheckBoxEnabled:Z

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mUserId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/NotificationLockscreenPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mShowRemoteInput:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/NotificationLockscreenPreference;IZ)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/NotificationLockscreenPreference;->checkboxVisibilityForSelectedIndex(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/notification/NotificationLockscreenPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAllowRemoteInput:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/notification/NotificationLockscreenPreference;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v0
.end method

.method private checkboxVisibilityForSelectedIndex(IZ)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mRemoteInputCheckBoxEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    return v0
.end method


# virtual methods
.method protected createListAdapter()Landroid/widget/ListAdapter;
    .locals 4

    new-instance v0, Lcom/android/settings/RestrictedListPreference$RestrictedArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/RestrictedListPreference$RestrictedArrayAdapter;-><init>(Lcom/android/settings/RestrictedListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method protected isAutoClosePreference()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0}, Lcom/android/settings/RestrictedListPreference;->onClick()V

    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedListPreference;->onDialogClosed(Z)V

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_allow_remote_input"

    iget-boolean v2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAllowRemoteInput:Z

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method protected onDialogCreated(Landroid/app/Dialog;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedListPreference;->onDialogCreated(Landroid/app/Dialog;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->create()V

    const v0, 0x7f0a02f3

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAllowRemoteInput:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mListener:Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    const v1, 0x7f0a044b

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v2, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    const v2, 0x1020214

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mListener:Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method protected onDialogStateRestored(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedListPreference;->onDialogStateRestored(Landroid/app/Dialog;Landroid/os/Bundle;)V

    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    const v2, 0x1020214

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mShowRemoteInput:Z

    invoke-direct {p0, v1, v3}, Lcom/android/settings/notification/NotificationLockscreenPreference;->checkboxVisibilityForSelectedIndex(IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mListener:Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;

    invoke-virtual {v3, v2}, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;->setView(Landroid/view/View;)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4

    new-instance v0, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;-><init>(Lcom/android/settings/notification/NotificationLockscreenPreference;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mListener:Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->createListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getSelectedValuePos()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mListener:Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mShowRemoteInput:Z

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lock_screen_allow_remote_input"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAllowRemoteInput:Z

    const v0, 0x7f0d00f8

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public setRemoteInputCheckBoxEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mRemoteInputCheckBoxEnabled:Z

    return-void
.end method

.method public setRemoteInputRestricted(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mUserId:I

    return-void
.end method
