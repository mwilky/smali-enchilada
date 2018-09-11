.class public Landroid/support/v17/leanback/system/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/system/Settings$Customizations;
    }
.end annotation


# static fields
.field private static final ACTION_PARTNER_CUSTOMIZATION:Ljava/lang/String; = "android.support.v17.leanback.action.PARTNER_CUSTOMIZATION"

.field private static final DEBUG:Z = false

.field public static final OUTLINE_CLIPPING_DISABLED:Ljava/lang/String; = "OUTLINE_CLIPPING_DISABLED"

.field public static final PREFER_STATIC_SHADOWS:Ljava/lang/String; = "PREFER_STATIC_SHADOWS"

.field private static final TAG:Ljava/lang/String; = "Settings"

.field private static sInstance:Landroid/support/v17/leanback/system/Settings;


# instance fields
.field private mOutlineClippingDisabled:Z

.field private mPreferStaticShadows:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/system/Settings;->getCustomizations(Landroid/content/Context;)Landroid/support/v17/leanback/system/Settings$Customizations;

    move-result-object v0

    .line 70
    .local v0, "customizations":Landroid/support/v17/leanback/system/Settings$Customizations;
    invoke-direct {p0, v0}, Landroid/support/v17/leanback/system/Settings;->generateSetting(Landroid/support/v17/leanback/system/Settings$Customizations;)V

    .line 71
    return-void
.end method

.method private generateSetting(Landroid/support/v17/leanback/system/Settings$Customizations;)V
    .locals 4
    .param p1, "customizations"    # Landroid/support/v17/leanback/system/Settings$Customizations;

    .line 116
    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->supportsDynamicShadow()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 117
    iput-boolean v2, p0, Landroid/support/v17/leanback/system/Settings;->mPreferStaticShadows:Z

    .line 118
    if-eqz p1, :cond_1

    .line 119
    const-string v0, "leanback_prefer_static_shadows"

    iget-boolean v3, p0, Landroid/support/v17/leanback/system/Settings;->mPreferStaticShadows:Z

    invoke-virtual {p1, v0, v3}, Landroid/support/v17/leanback/system/Settings$Customizations;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v17/leanback/system/Settings;->mPreferStaticShadows:Z

    goto :goto_0

    .line 123
    :cond_0
    iput-boolean v1, p0, Landroid/support/v17/leanback/system/Settings;->mPreferStaticShadows:Z

    .line 126
    :cond_1
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_2

    .line 127
    iput-boolean v2, p0, Landroid/support/v17/leanback/system/Settings;->mOutlineClippingDisabled:Z

    .line 128
    if-eqz p1, :cond_3

    .line 129
    const-string v0, "leanback_outline_clipping_disabled"

    iget-boolean v1, p0, Landroid/support/v17/leanback/system/Settings;->mOutlineClippingDisabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/support/v17/leanback/system/Settings$Customizations;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v17/leanback/system/Settings;->mOutlineClippingDisabled:Z

    goto :goto_1

    .line 133
    :cond_2
    iput-boolean v1, p0, Landroid/support/v17/leanback/system/Settings;->mOutlineClippingDisabled:Z

    .line 138
    :cond_3
    :goto_1
    return-void
.end method

.method private getCustomizations(Landroid/content/Context;)Landroid/support/v17/leanback/system/Settings$Customizations;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 157
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.support.v17.leanback.action.PARTNER_CUSTOMIZATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 163
    .local v2, "resources":Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 164
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 165
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 167
    if-eqz v3, :cond_0

    invoke-static {v5}, Landroid/support/v17/leanback/system/Settings;->isSystemApp(Landroid/content/pm/ResolveInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 168
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    .line 171
    goto :goto_1

    .line 169
    :catch_0
    move-exception v6

    .line 172
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 174
    goto :goto_2

    .line 176
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    goto :goto_0

    .line 177
    :cond_2
    :goto_2
    if-nez v2, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    new-instance v4, Landroid/support/v17/leanback/system/Settings$Customizations;

    invoke-direct {v4, v2, v3}, Landroid/support/v17/leanback/system/Settings$Customizations;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    :goto_3
    return-object v4
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/support/v17/leanback/system/Settings;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 61
    sget-object v0, Landroid/support/v17/leanback/system/Settings;->sInstance:Landroid/support/v17/leanback/system/Settings;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Landroid/support/v17/leanback/system/Settings;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/system/Settings;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/support/v17/leanback/system/Settings;->sInstance:Landroid/support/v17/leanback/system/Settings;

    .line 64
    :cond_0
    sget-object v0, Landroid/support/v17/leanback/system/Settings;->sInstance:Landroid/support/v17/leanback/system/Settings;

    return-object v0
.end method

.method private static isSystemApp(Landroid/content/pm/ResolveInfo;)Z
    .locals 2
    .param p0, "info"    # Landroid/content/pm/ResolveInfo;

    .line 181
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/support/v17/leanback/system/Settings;->getOrSetBoolean(Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method getOrSetBoolean(Ljava/lang/String;ZZ)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "set"    # Z
    .param p3, "value"    # Z

    .line 107
    const-string v0, "PREFER_STATIC_SHADOWS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 108
    if-eqz p2, :cond_0

    iput-boolean p3, p0, Landroid/support/v17/leanback/system/Settings;->mPreferStaticShadows:Z

    move v0, p3

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/system/Settings;->mPreferStaticShadows:Z

    :goto_0
    return v0

    .line 109
    :cond_1
    const-string v0, "OUTLINE_CLIPPING_DISABLED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 110
    if-eqz p2, :cond_2

    iput-boolean p3, p0, Landroid/support/v17/leanback/system/Settings;->mOutlineClippingDisabled:Z

    move v0, p3

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Landroid/support/v17/leanback/system/Settings;->mOutlineClippingDisabled:Z

    :goto_1
    return v0

    .line 112
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOutlineClippingDisabled()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 88
    iget-boolean v0, p0, Landroid/support/v17/leanback/system/Settings;->mOutlineClippingDisabled:Z

    return v0
.end method

.method public preferStaticShadows()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 79
    iget-boolean v0, p0, Landroid/support/v17/leanback/system/Settings;->mPreferStaticShadows:Z

    return v0
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v17/leanback/system/Settings;->getOrSetBoolean(Ljava/lang/String;ZZ)Z

    .line 104
    return-void
.end method
