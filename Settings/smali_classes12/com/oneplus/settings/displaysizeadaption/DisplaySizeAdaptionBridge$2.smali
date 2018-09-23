.class Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge$2;
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
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v1

    const/16 v2, 0x3e7

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v1, v2, :cond_1

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v3

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->access$000(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->access$100(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    nop

    :goto_0
    return v0

    :cond_4
    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v1, v2, :cond_5

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v3

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->access$000(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v0, v3

    nop

    :cond_5
    return v0
.end method

.method public init()V
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->access$400()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->access$302(Ljava/util/List;)Ljava/util/List;

    return-void
.end method
