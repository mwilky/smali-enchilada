.class public Lcom/oneplus/settings/statusbar/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final CLOCK_SECONDS:Ljava/lang/String; = "clock_seconds"

.field public static final ICON_BLACKLIST:Ljava/lang/String; = "icon_blacklist"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentUser:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/oneplus/settings/statusbar/Utils;->mContext:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/statusbar/Utils;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/oneplus/settings/statusbar/Utils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/statusbar/Utils;->mContentResolver:Landroid/content/ContentResolver;

    .line 55
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/statusbar/Utils;->mCurrentUser:I

    .line 56
    return-void
.end method

.method public static getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 6
    .param p0, "blackListStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 60
    .local v0, "ret":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 61
    const-string p0, "rotate,networkspeed"

    .line 63
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 64
    .local v1, "mTM":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 65
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "23410"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    const-string v2, "Utils"

    const-string v3, "O2 UK sim, add volte/vowifi to blacklist by default"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string p0, "rotate,networkspeed,volte,vowifi"

    .line 72
    .end local v1    # "mTM":Landroid/telephony/TelephonyManager;
    :cond_0
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "blacklist":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 74
    .local v4, "slot":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 75
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v4    # "slot":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    :cond_2
    return-object v0
.end method


# virtual methods
.method public getValue(Ljava/lang/String;I)I
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 90
    iget-object v0, p0, Lcom/oneplus/settings/statusbar/Utils;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/oneplus/settings/statusbar/Utils;->mCurrentUser:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/oneplus/settings/statusbar/Utils;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/oneplus/settings/statusbar/Utils;->mCurrentUser:I

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;I)V
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 94
    iget-object v0, p0, Lcom/oneplus/settings/statusbar/Utils;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/oneplus/settings/statusbar/Utils;->mCurrentUser:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 95
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/statusbar/Utils;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/oneplus/settings/statusbar/Utils;->mCurrentUser:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 87
    return-void
.end method
