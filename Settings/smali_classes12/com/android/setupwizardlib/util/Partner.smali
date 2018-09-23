.class public Lcom/android/setupwizardlib/util/Partner;
.super Ljava/lang/Object;
.source "Partner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/util/Partner$ResourceEntry;
    }
.end annotation


# static fields
.field private static final ACTION_PARTNER_CUSTOMIZATION:Ljava/lang/String; = "com.android.setupwizard.action.PARTNER_CUSTOMIZATION"

.field private static final TAG:Ljava/lang/String; = "(SUW) Partner"

.field private static sPartner:Lcom/android/setupwizardlib/util/Partner;

.field private static sSearched:Z


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/setupwizardlib/util/Partner;->sSearched:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/setupwizardlib/util/Partner;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/setupwizardlib/util/Partner;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/android/setupwizardlib/util/Partner;
    .locals 11

    const-class v0, Lcom/android/setupwizardlib/util/Partner;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/setupwizardlib/util/Partner;->sSearched:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.setupwizard.action.PARTNER_CUSTOMIZATION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    const/high16 v3, 0x1c0000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v7, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v8, v6

    if-eqz v8, :cond_2

    :try_start_1
    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v8

    new-instance v9, Lcom/android/setupwizardlib/util/Partner;

    iget-object v10, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v9, v10, v8}, Lcom/android/setupwizardlib/util/Partner;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    sput-object v9, Lcom/android/setupwizardlib/util/Partner;->sPartner:Lcom/android/setupwizardlib/util/Partner;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v6

    :try_start_2
    const-string v8, "(SUW) Partner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to find resources for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    goto :goto_1

    :cond_3
    :goto_2
    sput-boolean v6, Lcom/android/setupwizardlib/util/Partner;->sSearched:Z

    :cond_4
    sget-object v1, Lcom/android/setupwizardlib/util/Partner;->sPartner:Lcom/android/setupwizardlib/util/Partner;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getColor(Landroid/content/Context;I)I
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/android/setupwizardlib/util/Partner;->getResourceEntry(Landroid/content/Context;I)Lcom/android/setupwizardlib/util/Partner$ResourceEntry;

    move-result-object v0

    iget-object v1, v0, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;->resources:Landroid/content/res/Resources;

    iget v2, v0, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;->id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/android/setupwizardlib/util/Partner;->getResourceEntry(Landroid/content/Context;I)Lcom/android/setupwizardlib/util/Partner$ResourceEntry;

    move-result-object v0

    iget-object v1, v0, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;->resources:Landroid/content/res/Resources;

    iget v2, v0, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;->id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getResourceEntry(Landroid/content/Context;I)Lcom/android/setupwizardlib/util/Partner$ResourceEntry;
    .locals 8
    .param p1    # I
        .annotation build Landroid/support/annotation/AnyRes;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/android/setupwizardlib/util/Partner;->get(Landroid/content/Context;)Lcom/android/setupwizardlib/util/Partner;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/setupwizardlib/util/Partner;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    new-instance v5, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;

    iget-object v6, v0, Lcom/android/setupwizardlib/util/Partner;->mResources:Landroid/content/res/Resources;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v4, v7}, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;-><init>(Landroid/content/res/Resources;IZ)V

    return-object v5

    :cond_0
    new-instance v1, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;-><init>(Landroid/content/res/Resources;IZ)V

    return-object v1
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/android/setupwizardlib/util/Partner;->getResourceEntry(Landroid/content/Context;I)Lcom/android/setupwizardlib/util/Partner$ResourceEntry;

    move-result-object v0

    iget-object v1, v0, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;->resources:Landroid/content/res/Resources;

    iget v2, v0, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;->id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getText(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/android/setupwizardlib/util/Partner;->getResourceEntry(Landroid/content/Context;I)Lcom/android/setupwizardlib/util/Partner$ResourceEntry;

    move-result-object v0

    iget-object v1, v0, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;->resources:Landroid/content/res/Resources;

    iget v2, v0, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;->id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized resetForTesting()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/android/setupwizardlib/util/Partner;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/android/setupwizardlib/util/Partner;->sSearched:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/android/setupwizardlib/util/Partner;->sPartner:Lcom/android/setupwizardlib/util/Partner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/setupwizardlib/util/Partner;->mResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/android/setupwizardlib/util/Partner;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/util/Partner;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/util/Partner;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method
