.class public Lcom/android/settingslib/suggestions/SuggestionParser;
.super Ljava/lang/Object;
.source "SuggestionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionOrderInflater;
    }
.end annotation


# static fields
.field private static final DEFAULT_SMART_DISMISS_CONTROL:Ljava/lang/String; = "0"

.field private static final IS_DISMISSED:Ljava/lang/String; = "_is_dismissed"

.field private static final META_DATA_ADMIN_USER_TYPE_VALUE:Ljava/lang/String; = "admin"

.field public static final META_DATA_DISMISS_CONTROL:Ljava/lang/String; = "com.android.settings.dismiss"

.field private static final META_DATA_GUEST_USER_TYPE_VALUE:Ljava/lang/String; = "guest"

.field private static final META_DATA_IS_CONNECTION_REQUIRED:Ljava/lang/String; = "com.android.settings.require_connection"

.field private static final META_DATA_IS_SUPPORTED:Ljava/lang/String; = "com.android.settings.is_supported"

.field private static final META_DATA_PRIMARY_USER_TYPE_VALUE:Ljava/lang/String; = "primary"

.field private static final META_DATA_REQUIRE_ACCOUNT:Ljava/lang/String; = "com.android.settings.require_account"

.field public static final META_DATA_REQUIRE_FEATURE:Ljava/lang/String; = "com.android.settings.require_feature"

.field private static final META_DATA_REQUIRE_USER_TYPE:Ljava/lang/String; = "com.android.settings.require_user_type"

.field private static final META_DATA_RESTRICTED_USER_TYPE_VALUE:Ljava/lang/String; = "restricted"

.field public static final SETUP_TIME:Ljava/lang/String; = "_setup_time"

.field private static final TAG:Ljava/lang/String; = "SuggestionParser"


# instance fields
.field private final mAddCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDefaultDismissControl:Ljava/lang/String;

.field private final mSharedPrefs:Landroid/content/SharedPreferences;

.field private final mSuggestionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/suggestions/SuggestionCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .param p3, "orderXml"    # I

    .line 116
    const-string v0, "0"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settingslib/suggestions/SuggestionParser;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;ILjava/lang/String;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .param p3, "orderXml"    # I
    .param p4, "defaultDismissControl"    # Ljava/lang/String;

    .line 108
    new-instance v0, Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionOrderInflater;

    invoke-direct {v0, p1}, Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionOrderInflater;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {v0, p3}, Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionOrderInflater;->parse(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 108
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/settingslib/suggestions/SuggestionParser;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .param p4, "defaultDismissControl"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/suggestions/SuggestionCategory;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 124
    .local p3, "suggestionList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/suggestions/SuggestionCategory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mAddCache:Landroid/util/ArrayMap;

    .line 125
    iput-object p1, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    .line 126
    iput-object p3, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSuggestionList:Ljava/util/List;

    .line 127
    iput-object p2, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 128
    iput-object p4, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mDefaultDismissControl:Ljava/lang/String;

    .line 129
    return-void
.end method

.method private getDismissControl(Lcom/android/settingslib/drawer/Tile;Z)Ljava/lang/String;
    .locals 2
    .param p1, "suggestion"    # Lcom/android/settingslib/drawer/Tile;
    .param p2, "isSmartSuggestionEnabled"    # Z

    .line 392
    if-eqz p2, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mDefaultDismissControl:Ljava/lang/String;

    return-object v0

    .line 395
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.dismiss"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEndTime(JI)J
    .locals 4
    .param p1, "startTime"    # J
    .param p3, "daysDelay"    # I

    .line 378
    int-to-long v0, p3

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    .line 379
    .local v0, "days":J
    add-long v2, p1, v0

    return-wide v2
.end method

.method private isAvailable(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 9
    .param p1, "suggestion"    # Lcom/android/settingslib/drawer/Tile;

    .line 218
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.require_feature"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "featuresRequired":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 220
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 221
    .local v5, "feature":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 222
    const-string v6, "SuggestionParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found empty substring when parsing required features: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 224
    :cond_0
    iget-object v6, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 225
    const-string v1, "SuggestionParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " requires unavailable feature "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return v3

    .line 220
    .end local v5    # "feature":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 230
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private isExclusiveCategoryExpired(Lcom/android/settingslib/suggestions/SuggestionCategory;)Z
    .locals 12
    .param p1, "category"    # Lcom/android/settingslib/suggestions/SuggestionCategory;

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/settingslib/suggestions/SuggestionCategory;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_setup_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "keySetupTime":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 330
    .local v1, "currentTime":J
    iget-object v3, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 331
    iget-object v3, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 332
    invoke-interface {v3, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 333
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 335
    :cond_0
    iget-wide v3, p1, Lcom/android/settingslib/suggestions/SuggestionCategory;->exclusiveExpireDaysInMillis:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-gez v3, :cond_1

    .line 337
    return v4

    .line 339
    :cond_1
    iget-object v3, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3, v0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 340
    .local v5, "setupTime":J
    sub-long v7, v1, v5

    .line 341
    .local v7, "elapsedTime":J
    const-string v3, "SuggestionParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Day "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v10, 0x5265c00

    div-long v10, v7, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Lcom/android/settingslib/suggestions/SuggestionCategory;->category:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-wide v9, p1, Lcom/android/settingslib/suggestions/SuggestionCategory;->exclusiveExpireDaysInMillis:J

    cmp-long v3, v7, v9

    if-lez v3, :cond_2

    const/4 v4, 0x1

    nop

    :cond_2
    return v4
.end method

.method private parseDismissString(Ljava/lang/String;)I
    .locals 2
    .param p1, "dismissControl"    # Ljava/lang/String;

    .line 387
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "dismissStrs":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private satisfiesConnectivity(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 7
    .param p1, "suggestion"    # Lcom/android/settingslib/drawer/Tile;

    .line 299
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.require_connection"

    .line 300
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 301
    .local v0, "isConnectionRequired":Z
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 302
    return v1

    .line 304
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    .line 305
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 306
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 307
    .local v3, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 308
    .local v1, "satisfiesConnectivity":Z
    :goto_0
    if-nez v1, :cond_2

    .line 309
    const-string v4, "SuggestionParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is missing required connection."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_2
    return v1
.end method

.method private satisifesRequiredUserType(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 13
    .param p1, "suggestion"    # Lcom/android/settingslib/drawer/Tile;

    .line 235
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.require_user_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "requiredUser":Ljava/lang/String;
    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 237
    iget-object v2, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 238
    .local v2, "userManager":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 239
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    const-string v4, "\\|"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_6

    aget-object v8, v4, v7

    .line 240
    .local v8, "userType":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "primary"

    .line 241
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v1

    goto :goto_1

    :cond_0
    move v9, v6

    .line 242
    .local v9, "primaryUserCondtionMet":Z
    :goto_1
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "admin"

    .line 243
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v1

    goto :goto_2

    :cond_1
    move v10, v6

    .line 244
    .local v10, "adminUserConditionMet":Z
    :goto_2
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "guest"

    .line 245
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v11, v1

    goto :goto_3

    :cond_2
    move v11, v6

    .line 246
    .local v11, "guestUserCondtionMet":Z
    :goto_3
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, "restricted"

    .line 247
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    move v12, v1

    goto :goto_4

    :cond_3
    move v12, v6

    .line 248
    .local v12, "restrictedUserCondtionMet":Z
    :goto_4
    if-nez v9, :cond_5

    if-nez v10, :cond_5

    if-nez v11, :cond_5

    if-eqz v12, :cond_4

    goto :goto_5

    .line 239
    .end local v8    # "userType":Ljava/lang/String;
    .end local v9    # "primaryUserCondtionMet":Z
    .end local v10    # "adminUserConditionMet":Z
    .end local v11    # "guestUserCondtionMet":Z
    .end local v12    # "restrictedUserCondtionMet":Z
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 250
    .restart local v8    # "userType":Ljava/lang/String;
    .restart local v9    # "primaryUserCondtionMet":Z
    .restart local v10    # "adminUserConditionMet":Z
    .restart local v11    # "guestUserCondtionMet":Z
    .restart local v12    # "restrictedUserCondtionMet":Z
    :cond_5
    :goto_5
    return v1

    .line 253
    .end local v8    # "userType":Ljava/lang/String;
    .end local v9    # "primaryUserCondtionMet":Z
    .end local v10    # "adminUserConditionMet":Z
    .end local v11    # "guestUserCondtionMet":Z
    .end local v12    # "restrictedUserCondtionMet":Z
    :cond_6
    const-string v1, "SuggestionParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " requires user type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return v6

    .line 256
    .end local v2    # "userManager":Landroid/os/UserManager;
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_7
    return v1
.end method


# virtual methods
.method public dismissSuggestion(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 4
    .param p1, "suggestion"    # Lcom/android/settingslib/drawer/Tile;

    .line 166
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "keyBase":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_is_dismissed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 169
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    return v3
.end method

.method public filterSuggestions(Ljava/util/List;IZ)V
    .locals 2
    .param p2, "countBefore"    # I
    .param p3, "isSmartSuggestionEnabled"    # Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;IZ)V"
        }
    .end annotation

    .line 176
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    move v0, p2

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 177
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    invoke-direct {p0, v1}, Lcom/android/settingslib/suggestions/SuggestionParser;->isAvailable(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/suggestions/SuggestionParser;->isSupported(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    invoke-direct {p0, v1}, Lcom/android/settingslib/suggestions/SuggestionParser;->satisifesRequiredUserType(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/suggestions/SuggestionParser;->satisfiesRequiredAccount(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    invoke-direct {p0, v1}, Lcom/android/settingslib/suggestions/SuggestionParser;->satisfiesConnectivity(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {p0, v1, p3}, Lcom/android/settingslib/suggestions/SuggestionParser;->isDismissed(Lcom/android/settingslib/drawer/Tile;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 176
    .end local v0    # "i":I
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public getSuggestions(Z)Lcom/android/settingslib/suggestions/SuggestionList;
    .locals 7
    .param p1, "isSmartSuggestionEnabled"    # Z

    .line 132
    new-instance v0, Lcom/android/settingslib/suggestions/SuggestionList;

    invoke-direct {v0}, Lcom/android/settingslib/suggestions/SuggestionList;-><init>()V

    .line 133
    .local v0, "suggestionList":Lcom/android/settingslib/suggestions/SuggestionList;
    iget-object v1, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSuggestionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 134
    .local v1, "N":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 135
    iget-object v4, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSuggestionList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/suggestions/SuggestionCategory;

    .line 136
    .local v4, "category":Lcom/android/settingslib/suggestions/SuggestionCategory;
    iget-boolean v5, v4, Lcom/android/settingslib/suggestions/SuggestionCategory;->exclusive:Z

    if-eqz v5, :cond_1

    invoke-direct {p0, v4}, Lcom/android/settingslib/suggestions/SuggestionParser;->isExclusiveCategoryExpired(Lcom/android/settingslib/suggestions/SuggestionCategory;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 140
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v5, "exclusiveSuggestions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    invoke-virtual {p0, v4, v5, v2}, Lcom/android/settingslib/suggestions/SuggestionParser;->readSuggestions(Lcom/android/settingslib/suggestions/SuggestionCategory;Ljava/util/List;Z)V

    .line 145
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 146
    new-instance v2, Lcom/android/settingslib/suggestions/SuggestionList;

    invoke-direct {v2}, Lcom/android/settingslib/suggestions/SuggestionList;-><init>()V

    .line 147
    .local v2, "exclusiveList":Lcom/android/settingslib/suggestions/SuggestionList;
    invoke-virtual {v2, v4, v5}, Lcom/android/settingslib/suggestions/SuggestionList;->addSuggestions(Lcom/android/settingslib/suggestions/SuggestionCategory;Ljava/util/List;)V

    .line 148
    return-object v2

    .line 150
    .end local v2    # "exclusiveList":Lcom/android/settingslib/suggestions/SuggestionList;
    .end local v5    # "exclusiveSuggestions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    :cond_0
    goto :goto_1

    .line 153
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v5, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    invoke-virtual {p0, v4, v5, p1}, Lcom/android/settingslib/suggestions/SuggestionParser;->readSuggestions(Lcom/android/settingslib/suggestions/SuggestionCategory;Ljava/util/List;Z)V

    .line 155
    invoke-virtual {v0, v4, v5}, Lcom/android/settingslib/suggestions/SuggestionList;->addSuggestions(Lcom/android/settingslib/suggestions/SuggestionCategory;Ljava/util/List;)V

    .line 134
    .end local v4    # "category":Lcom/android/settingslib/suggestions/SuggestionCategory;
    .end local v5    # "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 158
    .end local v3    # "i":I
    :cond_2
    return-object v0
.end method

.method public isCategoryDone(Ljava/lang/String;)Z
    .locals 3
    .param p1, "category"    # Ljava/lang/String;

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "suggested.completed_category."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method isDismissed(Lcom/android/settingslib/drawer/Tile;Z)Z
    .locals 10
    .param p1, "suggestion"    # Lcom/android/settingslib/drawer/Tile;
    .param p2, "isSmartSuggestionEnabled"    # Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 347
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/suggestions/SuggestionParser;->getDismissControl(Lcom/android/settingslib/drawer/Tile;Z)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "dismissControl":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "keyBase":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_setup_time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_setup_time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 352
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 355
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_is_dismissed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 356
    .local v2, "isDismissed":Z
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 357
    return v3

    .line 359
    :cond_1
    if-nez v0, :cond_2

    .line 360
    return v4

    .line 364
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settingslib/suggestions/SuggestionParser;->parseDismissString(Ljava/lang/String;)I

    move-result v5

    .line 365
    .local v5, "firstAppearDay":I
    iget-object v6, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_setup_time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v5}, Lcom/android/settingslib/suggestions/SuggestionParser;->getEndTime(JI)J

    move-result-wide v6

    .line 367
    .local v6, "firstAppearDayInMs":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-ltz v8, :cond_3

    .line 369
    iget-object v3, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_is_dismissed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 370
    invoke-interface {v3, v8, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 371
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 372
    return v4

    .line 374
    :cond_3
    return v3
.end method

.method public isSupported(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 7
    .param p1, "suggestion"    # Lcom/android/settingslib/drawer/Tile;

    .line 275
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.is_supported"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 277
    .local v0, "isSupportedResource":I
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-nez v2, :cond_0

    .line 278
    return v1

    .line 280
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    .line 281
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 280
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v2

    .line 283
    .local v2, "res":Landroid/content/res/Resources;
    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    .line 284
    .local v3, "isSupported":Z
    :goto_0
    if-nez v3, :cond_2

    .line 285
    const-string v4, "SuggestionParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " requires unsupported resource "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_2
    return v3

    .line 292
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "isSupported":Z
    :catch_0
    move-exception v2

    .line 293
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "SuggestionParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find resources for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    return v1

    .line 289
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v2

    .line 290
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "SuggestionParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find resources for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return v1
.end method

.method public markCategoryDone(Ljava/lang/String;)V
    .locals 3
    .param p1, "category"    # Ljava/lang/String;

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "suggested.completed_category."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 322
    return-void
.end method

.method readSuggestions(Lcom/android/settingslib/suggestions/SuggestionCategory;Ljava/util/List;Z)V
    .locals 15
    .param p1, "category"    # Lcom/android/settingslib/suggestions/SuggestionCategory;
    .param p3, "isSmartSuggestionEnabled"    # Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/suggestions/SuggestionCategory;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;Z)V"
        }
    .end annotation

    .local p2, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    .line 191
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    .line 192
    .local v13, "countBefore":I
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v14, v2

    .line 193
    .local v14, "intent":Landroid/content/Intent;
    iget-object v2, v1, Lcom/android/settingslib/suggestions/SuggestionCategory;->category:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    iget-object v2, v1, Lcom/android/settingslib/suggestions/SuggestionCategory;->pkg:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, v1, Lcom/android/settingslib/suggestions/SuggestionCategory;->pkg:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    :cond_0
    iget-object v2, v0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v5, v0, Lcom/android/settingslib/suggestions/SuggestionParser;->mAddCache:Landroid/util/ArrayMap;

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v4, v14

    move-object v7, v12

    invoke-static/range {v2 .. v11}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForIntent(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;ZZZZ)V

    .line 199
    move/from16 v2, p3

    invoke-virtual {v0, v12, v13, v2}, Lcom/android/settingslib/suggestions/SuggestionParser;->filterSuggestions(Ljava/util/List;IZ)V

    .line 200
    iget-boolean v3, v1, Lcom/android/settingslib/suggestions/SuggestionCategory;->multiple:Z

    if-nez v3, :cond_3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v4, v13, 0x1

    if-le v3, v4, :cond_3

    .line 203
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v12, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/drawer/Tile;

    .line 204
    .local v3, "item":Lcom/android/settingslib/drawer/Tile;
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v13, :cond_2

    .line 205
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v12, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/Tile;

    .line 206
    .local v4, "last":Lcom/android/settingslib/drawer/Tile;
    iget v5, v4, Lcom/android/settingslib/drawer/Tile;->priority:I

    iget v6, v3, Lcom/android/settingslib/drawer/Tile;->priority:I

    if-le v5, v6, :cond_1

    .line 207
    move-object v3, v4

    .line 209
    .end local v4    # "last":Lcom/android/settingslib/drawer/Tile;
    :cond_1
    goto :goto_0

    .line 211
    :cond_2
    iget-object v4, v1, Lcom/android/settingslib/suggestions/SuggestionCategory;->category:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/settingslib/suggestions/SuggestionParser;->isCategoryDone(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 212
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    .end local v3    # "item":Lcom/android/settingslib/drawer/Tile;
    :cond_3
    return-void
.end method

.method public satisfiesRequiredAccount(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 7
    .param p1, "suggestion"    # Lcom/android/settingslib/drawer/Tile;

    .line 260
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.require_account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "requiredAccountType":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 262
    return v1

    .line 264
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    const-class v3, Landroid/accounts/AccountManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/AccountManager;

    .line 265
    .local v2, "accountManager":Landroid/accounts/AccountManager;
    invoke-virtual {v2, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 266
    .local v3, "accounts":[Landroid/accounts/Account;
    array-length v4, v3

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 267
    .local v1, "satisfiesRequiredAccount":Z
    :goto_0
    if-nez v1, :cond_2

    .line 268
    const-string v4, "SuggestionParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " requires unavailable account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_2
    return v1
.end method
