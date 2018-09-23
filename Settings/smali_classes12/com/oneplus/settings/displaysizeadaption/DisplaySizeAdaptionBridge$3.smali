.class Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge$3;
.super Ljava/lang/Object;
.source "DisplaySizeAdaptionBridge.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v2

    const/16 v3, 0x3e7

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-eq v2, v3, :cond_1

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v4

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->access$000(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->access$100(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->access$200()Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->getAppTypeValue(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_3

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    nop

    :goto_0
    return v0

    :cond_4
    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-eq v2, v3, :cond_5

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v4

    if-nez v2, :cond_5

    invoke-static {}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->access$200()Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->getAppTypeValue(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_5

    move v0, v4

    goto :goto_1

    :cond_5
    nop

    :goto_1
    return v0

    :cond_6
    :goto_2
    return v0
.end method

.method public init()V
    .locals 0

    return-void
.end method
