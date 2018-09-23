.class public Lcom/oneplus/lib/preference/PreferenceManager;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;,
        Lcom/oneplus/lib/preference/PreferenceManager$OnActivityStopListener;,
        Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;,
        Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;
    }
.end annotation


# static fields
.field public static final KEY_HAS_SET_DEFAULT_VALUES:Ljava/lang/String; = "_has_set_default_values"

.field public static final METADATA_KEY_PREFERENCES:Ljava/lang/String; = "com.oneplus.lib.preference"

.field private static final STORAGE_DEFAULT:I = 0x0

.field private static final STORAGE_DEVICE_PROTECTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PreferenceManager"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityDestroyListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityResultListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityStopListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/preference/PreferenceManager$OnActivityStopListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mFragment:Lcom/oneplus/lib/preference/PreferenceFragment;

.field private mNextId:J

.field private mNextRequestCode:I

.field private mNoCommit:Z

.field private mOnPreferenceTreeClickListener:Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;

.field private mPreferenceScreen:Lcom/oneplus/lib/preference/PreferenceScreen;

.field private mPreferencesScreens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSharedPreferencesMode:I

.field private mSharedPreferencesName:Ljava/lang/String;

.field private mStorage:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mNextId:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mStorage:I

    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivity:Landroid/app/Activity;

    iput p2, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mNextRequestCode:I

    invoke-direct {p0, p1}, Lcom/oneplus/lib/preference/PreferenceManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mNextId:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mStorage:I

    invoke-direct {p0, p1}, Lcom/oneplus/lib/preference/PreferenceManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method private dismissAllScreens()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    invoke-static {p0}, Lcom/oneplus/lib/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/lib/preference/PreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultSharedPreferencesMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/lib/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    return-void
.end method

.method private queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultValues(Landroid/content/Context;IZ)V
    .locals 2

    invoke-static {p0}, Lcom/oneplus/lib/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/lib/preference/PreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/oneplus/lib/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public static setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 5

    const-string v0, "_has_set_default_values"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez p4, :cond_0

    const-string v2, "_has_set_default_values"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/oneplus/lib/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p3, v2}, Lcom/oneplus/lib/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILcom/oneplus/lib/preference/PreferenceScreen;)Lcom/oneplus/lib/preference/PreferenceScreen;

    nop

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "_has_set_default_values"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private setNoCommit(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mNoCommit:Z

    return-void
.end method


# virtual methods
.method addPreferencesScreen(Landroid/content/DialogInterface;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createPreferenceScreen(Landroid/content/Context;)Lcom/oneplus/lib/preference/PreferenceScreen;
    .locals 2

    new-instance v0, Lcom/oneplus/lib/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oneplus/lib/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->onAttachedToHierarchy(Lcom/oneplus/lib/preference/PreferenceManager;)V

    return-object v0
.end method

.method dispatchActivityDestroy()V
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;

    invoke-interface {v3}, Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;->onActivityDestroy()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceManager;->dismissAllScreens()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method dispatchActivityResult(IILandroid/content/Intent;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method dispatchActivityStop()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/preference/PreferenceManager$OnActivityStopListener;

    invoke-interface {v3}, Lcom/oneplus/lib/preference/PreferenceManager$OnActivityStopListener;->onActivityStop()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method dispatchNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceManager;->dismissAllScreens()V

    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferenceScreen:Lcom/oneplus/lib/preference/PreferenceScreen;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferenceScreen:Lcom/oneplus/lib/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mNoCommit:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method getFragment()Lcom/oneplus/lib/preference/PreferenceFragment;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mFragment:Lcom/oneplus/lib/preference/PreferenceFragment;

    return-object v0
.end method

.method getNextId()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mNextId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mNextId:J

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getNextRequestCode()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mNextRequestCode:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mNextRequestCode:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getOnPreferenceTreeClickListener()Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;

    return-object v0
.end method

.method getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferenceScreen:Lcom/oneplus/lib/preference/PreferenceScreen;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mStorage:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mContext:Landroid/content/Context;

    goto :goto_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    nop

    :goto_1
    nop

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    iget v2, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferencesMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getSharedPreferencesMode()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferencesMode:I

    return v0
.end method

.method public getSharedPreferencesName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    return-object v0
.end method

.method inflateFromIntent(Landroid/content/Intent;Lcom/oneplus/lib/preference/PreferenceScreen;)Lcom/oneplus/lib/preference/PreferenceScreen;
    .locals 11

    invoke-direct {p0, p1}, Lcom/oneplus/lib/preference/PreferenceManager;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_1

    const-string v6, "com.oneplus.lib.preference"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.oneplus.lib.preference"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v7, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mContext:Landroid/content/Context;

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    new-instance v8, Lcom/oneplus/lib/preference/PreferenceInflater;

    invoke-direct {v8, v7, p0}, Lcom/oneplus/lib/preference/PreferenceInflater;-><init>(Landroid/content/Context;Lcom/oneplus/lib/preference/PreferenceManager;)V

    nop

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.oneplus.lib.preference"

    invoke-virtual {v4, v9, v10}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    nop

    invoke-virtual {v8, v9, p2, v3}, Lcom/oneplus/lib/preference/PreferenceInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/lib/preference/GenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object v10

    move-object p2, v10

    check-cast p2, Lcom/oneplus/lib/preference/PreferenceScreen;

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    :catch_0
    move-exception v7

    const-string v8, "PreferenceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not create context for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p2, p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->onAttachedToHierarchy(Lcom/oneplus/lib/preference/PreferenceManager;)V

    return-object p2
.end method

.method public inflateFromResource(Landroid/content/Context;ILcom/oneplus/lib/preference/PreferenceScreen;)Lcom/oneplus/lib/preference/PreferenceScreen;
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/PreferenceManager;->setNoCommit(Z)V

    new-instance v1, Lcom/oneplus/lib/preference/PreferenceInflater;

    invoke-direct {v1, p1, p0}, Lcom/oneplus/lib/preference/PreferenceInflater;-><init>(Landroid/content/Context;Lcom/oneplus/lib/preference/PreferenceManager;)V

    invoke-virtual {v1, p2, p3, v0}, Lcom/oneplus/lib/preference/PreferenceInflater;->inflate(ILcom/oneplus/lib/preference/GenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object v0

    move-object p3, v0

    check-cast p3, Lcom/oneplus/lib/preference/PreferenceScreen;

    invoke-virtual {p3, p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->onAttachedToHierarchy(Lcom/oneplus/lib/preference/PreferenceManager;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/PreferenceManager;->setNoCommit(Z)V

    return-object p3
.end method

.method public isStorageDefault()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    iget v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mStorage:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    return v1
.end method

.method public isStorageDeviceProtected()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    iget v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mStorage:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method registerOnActivityDestroyListener(Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method registerOnActivityResultListener(Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerOnActivityStopListener(Lcom/oneplus/lib/preference/PreferenceManager$OnActivityStopListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removePreferencesScreen(Landroid/content/DialogInterface;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setFragment(Lcom/oneplus/lib/preference/PreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mFragment:Lcom/oneplus/lib/preference/PreferenceFragment;

    return-void
.end method

.method setOnPreferenceTreeClickListener(Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;

    return-void
.end method

.method setPreferences(Lcom/oneplus/lib/preference/PreferenceScreen;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferenceScreen:Lcom/oneplus/lib/preference/PreferenceScreen;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferenceScreen:Lcom/oneplus/lib/preference/PreferenceScreen;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setSharedPreferencesMode(I)V
    .locals 1

    iput p1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferencesMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public setSharedPreferencesName(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public setStorageDefault()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mStorage:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method

.method public setStorageDeviceEncrypted()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceManager;->setStorageDeviceProtected()V

    return-void
.end method

.method public setStorageDeviceProtected()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mStorage:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method

.method shouldCommit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mNoCommit:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method unregisterOnActivityDestroyListener(Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method unregisterOnActivityResultListener(Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterOnActivityStopListener(Lcom/oneplus/lib/preference/PreferenceManager$OnActivityStopListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
