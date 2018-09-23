.class public Lcom/android/settings/security/trustagent/TrustAgentManager;
.super Ljava/lang/Object;
.source "TrustAgentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;
    }
.end annotation


# static fields
.field private static final ONLY_ONE_TRUST_AGENT:Z = true

.field static final PERMISSION_PROVIDE_AGENT:Ljava/lang/String; = "android.permission.PROVIDE_TRUST_AGENT"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TrustAgentManager"

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/security/trustagent/TrustAgentManager;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;
    .locals 12

    const/4 v0, 0x0

    if-eqz p2, :cond_b

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_b

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x0

    new-instance v2, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

    invoke-direct {v2}, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;-><init>()V

    const/4 v3, 0x0

    move-object v4, v0

    :try_start_0
    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v6, "android.service.trust.trustagent"

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    move-object v3, v5

    if-nez v3, :cond_2

    const-string v5, "TrustAgentManager"

    const-string v6, "Can\'t find android.service.trust.trustagent meta-data"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    return-object v0

    :cond_2
    :try_start_1
    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    :goto_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    move v8, v7

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v7, v10, :cond_3

    if-eq v8, v9, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v11, "trust-agent"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v9, "TrustAgentManager"

    const-string v10, "Meta-data does not start with trust-agent tag"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_4
    return-object v0

    :cond_5
    :try_start_2
    sget-object v11, Lcom/android/internal/R$styleable;->TrustAgent:[I

    invoke-virtual {v5, v6, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    nop

    invoke-virtual {v11, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v11, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-virtual {v11, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v1, v9

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_7

    :goto_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    throw v0

    :catch_0
    move-exception v5

    move-object v4, v5

    if-eqz v3, :cond_7

    goto :goto_1

    :catch_1
    move-exception v5

    move-object v4, v5

    if-eqz v3, :cond_7

    goto :goto_1

    :catch_2
    move-exception v5

    move-object v4, v5

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_7
    :goto_2
    if-eqz v4, :cond_8

    const-string v5, "TrustAgentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :cond_8
    if-eqz v1, :cond_9

    const/16 v5, 0x2f

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    nop

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :goto_3
    iput-object v0, v2, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    return-object v2

    :cond_b
    :goto_4
    return-object v0
.end method


# virtual methods
.method public getActiveTrustAgentLabel(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

    iget-object v1, v1, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->title:Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method public getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/android/settings/security/trustagent/TrustAgentManager;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v5

    nop

    const/16 v6, 0x10

    invoke-static {p1, v6, v0}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v6

    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v9, :cond_0

    invoke-virtual {p0, v8, v2}, Lcom/android/settings/security/trustagent/TrustAgentManager;->shouldProvideTrust(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    nop

    invoke-direct {p0, v2, v8}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

    move-result-object v9

    iget-object v10, v9, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v10, :cond_0

    invoke-virtual {p0, v8}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, v9, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    const/4 v7, 0x0

    invoke-virtual {p0, v8}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v1, v7, v10}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_3

    iput-object v6, v9, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    :cond_3
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    :cond_4
    return-object v3
.end method

.method public getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldProvideTrust(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z
    .locals 4

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v1, "android.permission.PROVIDE_TRUST_AGENT"

    invoke-virtual {p2, v1, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TrustAgentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping agent because package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not have permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.permission.PROVIDE_TRUST_AGENT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method
