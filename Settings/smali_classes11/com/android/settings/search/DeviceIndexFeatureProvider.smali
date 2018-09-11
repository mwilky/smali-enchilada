.class public interface abstract Lcom/android/settings/search/DeviceIndexFeatureProvider;
.super Ljava/lang/Object;
.source "DeviceIndexFeatureProvider.java"


# static fields
.field public static final INDEX_LANGUAGE:Ljava/lang/String; = "settings:language"

.field public static final INDEX_VERSION:Ljava/lang/String; = "settings:index_version"

.field public static final LANGUAGE:Ljava/util/Locale;

.field public static final TAG:Ljava/lang/String; = "DeviceIndex"

.field public static final VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/search/DeviceIndexFeatureProvider;->VERSION:Ljava/lang/String;

    .line 51
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search/DeviceIndexFeatureProvider;->LANGUAGE:Ljava/util/Locale;

    return-void
.end method

.method public static createDeepLink(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 114
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "settings"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.android.settings.slices"

    .line 115
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "intent"

    .line 116
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 114
    return-object v0
.end method

.method public static setIndexState(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "settings:index_version"

    sget-object v2, Lcom/android/settings/search/DeviceIndexFeatureProvider;->VERSION:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "settings:language"

    sget-object v2, Lcom/android/settings/search/DeviceIndexFeatureProvider;->LANGUAGE:Ljava/util/Locale;

    .line 132
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 133
    return-void
.end method

.method public static skipIndex(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 121
    nop

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "settings:index_version"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/search/DeviceIndexFeatureProvider;->VERSION:Ljava/lang/String;

    .line 121
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 123
    .local v0, "isSameVersion":Z
    nop

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settings:language"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/DeviceIndexFeatureProvider;->LANGUAGE:Ljava/util/Locale;

    .line 125
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 126
    .local v1, "isSameLanguage":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method public abstract clearIndex(Landroid/content/Context;)V
.end method

.method public abstract index(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isIndexingEnabled()Z
.end method

.method public updateIndex(Landroid/content/Context;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "force"    # Z

    .line 61
    invoke-interface {p0}, Lcom/android/settings/search/DeviceIndexFeatureProvider;->isIndexingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    const-string v0, "DeviceIndex"

    const-string v1, "Skipping: device index is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void

    .line 66
    :cond_0
    invoke-static {p1}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    const-string v0, "DeviceIndex"

    const-string v1, "Skipping: device is not provisioned"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void

    .line 71
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/search/DeviceIndexUpdateJobService;

    .line 72
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .local v0, "jobComponent":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 76
    .local v1, "callerUid":I
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0xc0000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 79
    .local v2, "si":Landroid/content/pm/ServiceInfo;
    if-nez v2, :cond_2

    .line 80
    const-string v3, "DeviceIndex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping: No such service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 83
    :cond_2
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v1, :cond_3

    .line 84
    const-string v3, "DeviceIndex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping: Uid cannot schedule DeviceIndexUpdate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    return-void

    .line 90
    .end local v1    # "callerUid":I
    .end local v2    # "si":Landroid/content/pm/ServiceInfo;
    :cond_3
    nop

    .line 92
    if-nez p2, :cond_4

    invoke-static {p1}, Lcom/android/settings/search/DeviceIndexFeatureProvider;->skipIndex(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 93
    const-string v1, "DeviceIndex"

    const-string v2, "Skipping: already indexed."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void

    .line 99
    :cond_4
    invoke-static {p1}, Lcom/android/settings/search/DeviceIndexFeatureProvider;->setIndexState(Landroid/content/Context;)V

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 104
    .local v1, "jobId":I
    const-class v2, Landroid/app/job/JobScheduler;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    new-instance v3, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v3, v1, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v4, 0x1

    .line 106
    invoke-virtual {v3, v4}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    .line 107
    invoke-virtual {v3, v4, v5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    const-wide/16 v4, 0x1

    .line 108
    invoke-virtual {v3, v4, v5}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    .line 109
    invoke-virtual {v3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    .line 104
    invoke-virtual {v2, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 111
    return-void

    .line 87
    .end local v1    # "jobId":I
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "DeviceIndex"

    const-string v3, "Skipping: error finding DeviceIndexUpdateJobService from packageManager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method
