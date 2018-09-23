.class public Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
.super Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppEntry"
.end annotation


# instance fields
.field public final apkFile:Ljava/io/File;

.field public externalSize:J

.field public externalSizeStr:Ljava/lang/String;

.field public extraInfo:Ljava/lang/Object;

.field public hasLauncherEntry:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public final id:J

.field public info:Landroid/content/pm/ApplicationInfo;

.field public internalSize:J

.field public internalSizeStr:Ljava/lang/String;

.field public isHomeApp:Z

.field public label:Ljava/lang/String;

.field public launcherEntryEnabled:Z

.field public mounted:Z

.field public normalizedLabel:Ljava/lang/String;

.field public size:J

.field public sizeLoadStart:J

.field public sizeStale:Z

.field public sizeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    invoke-direct {p0}, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;-><init>()V

    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    iput-wide p3, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->id:J

    iput-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    invoke-virtual {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method ensureIconLocked(Landroid/content/Context;Landroid/util/IconDrawableFactory;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v0}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    return v2

    :cond_0
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    const v0, 0x1080807

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v0}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method public ensureLabel(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    :cond_3
    :goto_1
    return-void
.end method

.method public getNormalizedLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    return-object v1
.end method
