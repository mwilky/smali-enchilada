.class Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge$2;
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

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 4
    .param p1, "info"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 94
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 95
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    sget-object v1, Lcom/oneplus/settings/utils/OPUtils;->bgServiceApplist:Ljava/util/List;

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    return v0

    .line 101
    :cond_1
    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v1, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;

    .line 102
    .local v1, "acm":Lcom/oneplus/settings/backgroundoptimize/AppControlMode;
    iget v2, v1, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->value:I

    const/4 v3, 0x1

    if-ne v3, v2, :cond_2

    move v0, v3

    nop

    :cond_2
    return v0

    .line 96
    .end local v1    # "acm":Lcom/oneplus/settings/backgroundoptimize/AppControlMode;
    :cond_3
    :goto_0
    return v0
.end method

.method public init()V
    .locals 0

    .line 89
    return-void
.end method
