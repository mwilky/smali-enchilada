.class public Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
.super Ljava/lang/Object;
.source "SmsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsApplicationData"
.end annotation


# instance fields
.field private mApplicationName:Ljava/lang/String;

.field private mMmsReceiverClass:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field private mProviderChangedReceiverClass:Ljava/lang/String;

.field private mRespondViaMessageClass:Ljava/lang/String;

.field private mSendToClass:Ljava/lang/String;

.field private mSimFullReceiverClass:Ljava/lang/String;

.field private mSmsAppChangedReceiverClass:Ljava/lang/String;

.field private mSmsReceiverClass:Ljava/lang/String;

.field private mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    .line 136
    iput p2, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsAppChangedReceiverClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsAppChangedReceiverClass:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mProviderChangedReceiverClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mProviderChangedReceiverClass:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSimFullReceiverClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSimFullReceiverClass:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 74
    iget v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    return v0
.end method


# virtual methods
.method public getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 144
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    .line 145
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 144
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 147
    nop

    .line 149
    if-eqz v2, :cond_1

    .line 150
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 151
    .local v3, "label":Ljava/lang/CharSequence;
    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "label":Ljava/lang/CharSequence;
    goto :goto_1

    .line 146
    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 147
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v1

    .line 154
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mSmsReceiverClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mMmsReceiverClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mRespondViaMessageClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mSendToClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mSmsAppChangedClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsAppChangedReceiverClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mProviderChangedReceiverClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mProviderChangedReceiverClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mSimFullReceiverClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSimFullReceiverClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
