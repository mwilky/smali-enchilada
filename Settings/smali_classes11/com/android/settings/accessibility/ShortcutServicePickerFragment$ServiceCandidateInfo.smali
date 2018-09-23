.class Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "ShortcutServicePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ShortcutServicePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceCandidateInfo"
.end annotation


# instance fields
.field final mServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field final synthetic this$0:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;->this$0:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/CandidateInfo;-><init>(Z)V

    iput-object p2, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;->mServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;->mServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;->mServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;->this$0:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f0f0000

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;->this$0:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .locals 7

    new-instance v0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v1, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;->this$0:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;->mServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;->mServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    nop

    :try_start_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v4

    return-object v3

    :cond_1
    return-object v3
.end method
