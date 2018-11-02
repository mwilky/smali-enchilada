.class public Lcom/android/settings/applications/DirectoryAccessDetails;
.super Lcom/android/settings/applications/AppInfoBase;
.source "DirectoryAccessDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DirectoryAccessDetails"


# instance fields
.field private mCreated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoBase;-><init>()V

    return-void
.end method

.method public static synthetic lambda$newPreference$1(Lcom/android/settings/applications/DirectoryAccessDetails;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0, p7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "DirectoryAccessDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value from switch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    move-object v0, p7

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move-object v2, p0

    move-object v3, p1

    move v4, v0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/applications/DirectoryAccessDetails;->resetDoNotAskAgain(Landroid/content/Context;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_1

    xor-int/lit8 v2, v0, 0x1

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static synthetic lambda$refreshUi$0(Lcom/android/settings/applications/DirectoryAccessDetails;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;Landroid/support/v7/preference/PreferenceCategory;Ljava/util/Set;Landroid/util/Pair;)V
    .locals 12

    move-object/from16 v0, p7

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const v4, 0x7f120563

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p4

    iget-object v6, v11, Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;->uuid:Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, v10

    move-object v5, p3

    move-object v7, v1

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/applications/DirectoryAccessDetails;->newPreference(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    move-object/from16 v3, p5

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move-object/from16 v4, p6

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private newPreference(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;)Landroid/support/v14/preference/SwitchPreference;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set<",
            "Landroid/support/v14/preference/SwitchPreference;",
            ">;)",
            "Landroid/support/v14/preference/SwitchPreference;"
        }
    .end annotation

    new-instance v0, Landroid/support/v14/preference/SwitchPreference;

    move-object v8, p1

    invoke-direct {v0, v8}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    const-string v1, "%s:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    const/4 v3, 0x1

    aput-object p5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    move-object v9, p2

    invoke-virtual {v0, v9}, Landroid/support/v14/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    move/from16 v10, p6

    invoke-virtual {v0, v10}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    new-instance v11, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$lMkU9x3CDhpq6XQS106C_-FREgc;

    move-object v1, v11

    move-object v2, p0

    move-object v3, v8

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$lMkU9x3CDhpq6XQS106C_-FREgc;-><init>(Lcom/android/settings/applications/DirectoryAccessDetails;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    invoke-virtual {v0, v11}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-object v0
.end method

.method private resetDoNotAskAgain(Landroid/content/Context;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "DirectoryAccessDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "granted"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/DirectoryAccessDetails;->mPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    aput-object p4, v3, v1

    const/4 v1, 0x2

    aput-object p5, v3, v1

    const/4 v1, 0x0

    invoke-virtual {v2, p3, v0, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string v2, "DirectoryAccessDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " entries for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x504

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/android/settings/applications/DirectoryAccessDetails;->mCreated:Z

    if-eqz v0, :cond_0

    const-string v0, "DirectoryAccessDetails"

    const-string v1, "onActivityCreated(): ignoring duplicate call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/DirectoryAccessDetails;->mCreated:Z

    iget-object v0, p0, Lcom/android/settings/applications/DirectoryAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    const-string v0, "DirectoryAccessDetails"

    const-string v1, "onActivityCreated(): no package info"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/DirectoryAccessDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/DirectoryAccessDetails;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/applications/DirectoryAccessDetails;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/DirectoryAccessDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/DirectoryAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/DirectoryAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/settings/applications/DirectoryAccessDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/DirectoryAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setIsInstantApp(Z)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/DirectoryAccessDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/DirectoryAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setUid(I)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setHasAppInfoLink(Z)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/android/settings/widget/EntityHeaderController;->setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/DirectoryAccessDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settings/applications/LayoutPreference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/DirectoryAccessDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f16004c

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DirectoryAccessDetails;->addPreferencesFromResource(I)V

    return-void
.end method

.method protected refreshUi()Z
    .locals 23

    move-object/from16 v15, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/DirectoryAccessDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/DirectoryAccessDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v12, v0

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.android.documentsui.scopedAccess"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "permissions"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/os/storage/StorageVolume$ScopedAccessProviderContract;->TABLE_PERMISSIONS_COLUMNS:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    iget-object v2, v15, Lcom/android/settings/applications/DirectoryAccessDetails;->mPackageName:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v2, v5, v9

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, v17

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    const/4 v11, 0x0

    if-nez v10, :cond_1

    :try_start_0
    const-string v1, "DirectoryAccessDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Didn\'t get cursor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/settings/applications/DirectoryAccessDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v6, v12

    move-object v7, v13

    move-object/from16 v21, v14

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v11, v0

    move-object v6, v12

    move-object v7, v13

    move-object/from16 v21, v14

    goto/16 :goto_5

    :cond_1
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v16, v1

    if-nez v16, :cond_3

    :try_start_2
    const-string v1, "DirectoryAccessDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No permissions for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/settings/applications/DirectoryAccessDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    return v0

    :cond_3
    :goto_0
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_a

    :try_start_4
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    move v1, v9

    :goto_1
    move v5, v1

    const-string v1, "DirectoryAccessDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " granted:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v15, Lcom/android/settings/applications/DirectoryAccessDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "DirectoryAccessDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " due to package mismatch: expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/settings/applications/DirectoryAccessDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    if-nez v7, :cond_7

    if-nez v6, :cond_6

    const-string v1, "DirectoryAccessDetails"

    const-string v2, "Ignoring permission on primary storage root"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v1, v15

    move-object v2, v14

    move-object v3, v6

    move-object/from16 v4, v17

    move/from16 v20, v5

    move-object/from16 v5, v18

    move-object/from16 v21, v6

    move-object v9, v7

    move/from16 v7, v20

    move-object/from16 v18, v8

    move-object/from16 v8, v19

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/applications/DirectoryAccessDetails;->newPreference(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    :cond_7
    move/from16 v20, v5

    move-object/from16 v21, v6

    move-object v9, v7

    move-object/from16 v18, v8

    invoke-interface {v12, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;

    if-nez v1, :cond_8

    new-instance v2, Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;

    invoke-direct {v2, v9}, Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    invoke-interface {v12, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    move-object/from16 v2, v21

    if-nez v2, :cond_9

    move/from16 v3, v20

    iput-boolean v3, v1, Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;->granted:Z

    goto :goto_2

    :cond_9
    move/from16 v3, v20

    iget-object v4, v1, Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;->children:Ljava/util/List;

    new-instance v5, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    nop

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_a
    if-eqz v10, :cond_b

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_b
    const-string v1, "DirectoryAccessDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "external volumes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    return v0

    :cond_c
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v14, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/os/storage/StorageManager;

    invoke-virtual {v11}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "DirectoryAccessDetails"

    const-string v2, "StorageManager returned no secondary volumes"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_d
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    move-object v9, v1

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_e

    goto :goto_3

    :cond_e
    invoke-virtual {v11, v2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    const-string v5, "DirectoryAccessDetails"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No description for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "; using uuid instead: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    :cond_f
    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_10
    const-string v1, "DirectoryAccessDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UUID -> name mapping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;

    iget-object v1, v6, Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;->uuid:Ljava/lang/String;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Ljava/lang/String;

    if-nez v18, :cond_11

    const-string v1, "DirectoryAccessDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring entry for invalid UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_11
    new-instance v1, Landroid/support/v7/preference/PreferenceCategory;

    invoke-direct {v1, v14}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object v5, v1

    invoke-virtual {v13, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    new-instance v8, Ljava/util/HashSet;

    iget-object v1, v6, Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v4, v6, Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;->uuid:Ljava/lang/String;

    const/16 v16, 0x0

    iget-boolean v3, v6, Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;->granted:Z

    move-object v1, v15

    move-object v2, v14

    move/from16 v19, v3

    move-object/from16 v3, v18

    move-object/from16 v20, v4

    move-object/from16 v4, v17

    move-object v0, v5

    move-object/from16 v5, v20

    move-object/from16 v22, v13

    move-object v13, v6

    move-object/from16 v6, v16

    move-object/from16 v20, v7

    move/from16 v7, v19

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/applications/DirectoryAccessDetails;->newPreference(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, v13, Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;->children:Ljava/util/List;

    new-instance v2, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$K0N0BhiTAIxLxuaXU9qwR-rLnAY;

    move-object v3, v9

    move-object v9, v2

    move-object v4, v10

    move-object v10, v15

    move-object v5, v11

    move-object v11, v14

    move-object v6, v12

    move-object/from16 v12, v18

    move-object/from16 v19, v13

    move-object/from16 v7, v22

    move-object/from16 v13, v17

    move-object/from16 v21, v14

    move-object/from16 v14, v19

    move-object v15, v0

    move-object/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$K0N0BhiTAIxLxuaXU9qwR-rLnAY;-><init>(Lcom/android/settings/applications/DirectoryAccessDetails;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;Landroid/support/v7/preference/PreferenceCategory;Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    nop

    move-object/from16 v15, p0

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    move-object/from16 v7, v20

    move-object/from16 v14, v21

    const/4 v0, 0x1

    goto/16 :goto_4

    :cond_12
    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move-object/from16 v21, v14

    const/4 v0, 0x1

    return v0

    :catchall_1
    move-exception v0

    move-object v6, v12

    move-object v7, v13

    move-object/from16 v21, v14

    move-object v1, v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v6, v12

    move-object v7, v13

    move-object/from16 v21, v14

    move-object v11, v0

    :goto_5
    :try_start_5
    throw v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    :goto_6
    if-eqz v10, :cond_14

    if-eqz v11, :cond_13

    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v11, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_13
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_14
    :goto_7
    throw v1
.end method
