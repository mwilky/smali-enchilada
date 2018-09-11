.class Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge$1;
.super Ljava/lang/Object;
.source "AppBgOptimizeBridge.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 3
    .param p1, "appEntry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 74
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    sget-object v1, Lcom/oneplus/settings/utils/OPUtils;->bgServiceApplist:Ljava/util/List;

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    return v0

    .line 82
    :cond_1
    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    move v0, v2

    nop

    :cond_2
    return v0

    .line 75
    :cond_3
    :goto_0
    return v0
.end method

.method public init()V
    .locals 0

    .line 69
    return-void
.end method
