.class public Lcom/android/settings/network/ApnEditor;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ApnEditor.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/ApnEditor$ApnData;,
        Lcom/android/settings/network/ApnEditor$ErrorDialog;
    }
.end annotation


# static fields
.field private static final APN_DEFALUT_VALUES_STRING_ARRAY:Ljava/lang/String; = "apn_default_values_strings_array"

.field static final APN_INDEX:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final AUTH_TYPE_INDEX:I = 0xe

.field private static final BEARER_BITMASK_INDEX:I = 0x13

.field private static final BEARER_INDEX:I = 0x12

.field static final CARRIER_ENABLED_INDEX:I = 0x11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final EDITED_INDEX:I = 0x17

.field private static final ID_INDEX:I = 0x0

.field private static final KEY_AUTH_TYPE:Ljava/lang/String; = "auth_type"

.field private static final KEY_BEARER_MULTI:Ljava/lang/String; = "bearer_multi"

.field private static final KEY_CARRIER_ENABLED:Ljava/lang/String; = "carrier_enabled"

.field private static final KEY_MVNO_TYPE:Ljava/lang/String; = "mvno_type"

.field private static final KEY_PASSWORD:Ljava/lang/String; = "apn_password"

.field private static final KEY_PROTOCOL:Ljava/lang/String; = "apn_protocol"

.field private static final KEY_ROAMING_PROTOCOL:Ljava/lang/String; = "apn_roaming_protocol"

.field static final MCC_INDEX:I = 0x9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MENU_CANCEL:I = 0x3

.field private static final MENU_DELETE:I = 0x1

.field private static final MENU_SAVE:I = 0x2

.field private static final MMSC_INDEX:I = 0x8

.field private static final MMSPORT_INDEX:I = 0xd

.field private static final MMSPROXY_INDEX:I = 0xc

.field static final MNC_INDEX:I = 0xa
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MVNO_MATCH_DATA_INDEX:I = 0x16

.field private static final MVNO_TYPE_INDEX:I = 0x15

.field static final NAME_INDEX:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final PASSWORD_INDEX:I = 0x7

.field private static final PERSISTENT_INDEX:I = 0x19

.field private static final PORT_INDEX:I = 0x4

.field private static final PROTOCOL_INDEX:I = 0x10

.field private static final PROXY_INDEX:I = 0x3

.field private static final READONLY_INDEX:I = 0x1a

.field private static final ROAMING_PROTOCOL_INDEX:I = 0x14

.field private static final SERVER_INDEX:I = 0x6

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_INDEX:I = 0xf

.field private static final USER_EDITABLE_INDEX:I = 0x18

.field private static final USER_INDEX:I = 0x5

.field private static final VDBG:Z = false

.field static sNotSet:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final sProjection:[Ljava/lang/String;

.field private static final sUIConfigurableItems:[Ljava/lang/String;


# instance fields
.field mApn:Lcom/android/settings/widget/ValidatedEditTextPreference;

.field mApnData:Lcom/android/settings/network/ApnEditor$ApnData;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mApnType:Lcom/android/settings/widget/ValidatedEditTextPreference;

.field mAuthType:Landroid/support/v7/preference/ListPreference;

.field private mBearerInitialVal:I

.field mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

.field mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

.field private mCarrierUri:Landroid/net/Uri;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mDeletableApn:Z

.field mMcc:Lcom/android/settings/widget/ValidatedEditTextPreference;

.field mMmsPort:Lcom/android/settings/widget/ValidatedEditTextPreference;

.field mMmsProxy:Lcom/android/settings/widget/ValidatedEditTextPreference;

.field mMmsc:Lcom/android/settings/widget/ValidatedEditTextPreference;

.field mMnc:Lcom/android/settings/widget/ValidatedEditTextPreference;

.field mMvnoMatchData:Lcom/android/settings/widget/ValidatedEditTextPreference;

.field private mMvnoMatchDataStr:Ljava/lang/String;

.field mMvnoType:Landroid/support/v7/preference/ListPreference;

.field private mMvnoTypeStr:Ljava/lang/String;

.field mName:Lcom/android/settings/widget/ValidatedEditTextPreference;

.field private mNewApn:Z

.field mPassword:Lcom/android/settings/widget/ValidatedEditTextPreference;

.field mPort:Lcom/android/settings/widget/ValidatedEditTextPreference;

.field mProtocol:Landroid/support/v7/preference/ListPreference;

.field mProxy:Lcom/android/settings/widget/ValidatedEditTextPreference;

.field private mReadOnlyApn:Z

.field private mReadOnlyApnFields:[Ljava/lang/String;

.field private mReadOnlyApnTypes:[Ljava/lang/String;

.field mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

.field mServer:Lcom/android/settings/widget/ValidatedEditTextPreference;

.field private mSubId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mUser:Lcom/android/settings/widget/ValidatedEditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 71
    const-class v0, Lcom/android/settings/network/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    .line 176
    const-string v1, "_id"

    const-string v2, "name"

    const-string v3, "apn"

    const-string v4, "proxy"

    const-string v5, "port"

    const-string v6, "user"

    const-string v7, "server"

    const-string v8, "password"

    const-string v9, "mmsc"

    const-string v10, "mcc"

    const-string v11, "mnc"

    const-string v12, "numeric"

    const-string v13, "mmsproxy"

    const-string v14, "mmsport"

    const-string v15, "authtype"

    const-string v16, "type"

    const-string v17, "protocol"

    const-string v18, "carrier_enabled"

    const-string v19, "bearer"

    const-string v20, "bearer_bitmask"

    const-string v21, "roaming_protocol"

    const-string v22, "mvno_type"

    const-string v23, "mvno_match_data"

    const-string v24, "edited"

    const-string v25, "user_editable"

    const-string v26, "persistent"

    const-string v27, "read_only"

    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    .line 206
    const-string v1, "name"

    const-string v2, "apn"

    const-string v3, "proxy"

    const-string v4, "port"

    const-string v5, "user"

    const-string v6, "server"

    const-string v7, "password"

    const-string v8, "mmsc"

    const-string v9, "mmsproxy"

    const-string v10, "mmsport"

    const-string v11, "authtype"

    const-string v12, "type"

    const-string v13, "protocol"

    const-string v14, "carrier_enabled"

    const-string v15, "bearer"

    const-string v16, "bearer_bitmask"

    const-string v17, "roaming_protocol"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnEditor;->sUIConfigurableItems:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    return-void
.end method

.method private apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "apnTypesArray1"    # [Ljava/lang/String;
    .param p2, "apnTypes2"    # Ljava/lang/String;

    .line 440
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 441
    return v1

    .line 444
    :cond_0
    invoke-static {p1}, Lcom/android/settings/network/ApnEditor;->hasAllApns([Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 448
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 449
    .local v0, "apnTypesList1":Ljava/util/List;
    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 451
    .local v3, "apnTypesArray2":[Ljava/lang/String;
    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 452
    .local v6, "apn":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 453
    sget-object v1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apnTypesMatch: true because match found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return v2

    .line 451
    .end local v6    # "apn":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 458
    :cond_3
    sget-object v2, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v4, "apnTypesMatch: false"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return v1

    .line 445
    .end local v0    # "apnTypesList1":Ljava/util/List;
    .end local v3    # "apnTypesArray2":[Ljava/lang/String;
    :cond_4
    :goto_1
    return v2
.end method

.method private bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 710
    .local p1, "raw":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, "values":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 712
    .local v1, "retVal":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 713
    .local v2, "first":Z
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 714
    .local v4, "bearer":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v5, v4}, Landroid/support/v14/preference/MultiSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    .line 716
    .local v5, "bearerIndex":I
    if-eqz v2, :cond_0

    .line 717
    :try_start_0
    aget-object v6, v0, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    const/4 v2, 0x0

    goto :goto_1

    .line 722
    :catch_0
    move-exception v6

    goto :goto_2

    .line 720
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :goto_1
    goto :goto_3

    .line 722
    :goto_2
    nop

    .line 725
    .end local v4    # "bearer":Ljava/lang/String;
    .end local v5    # "bearerIndex":I
    :goto_3
    goto :goto_0

    .line 726
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 727
    .local v3, "val":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 728
    return-object v3

    .line 730
    :cond_2
    const/4 v4, 0x0

    return-object v4
.end method

.method private checkApnType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1246
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1249
    :cond_0
    return-object p1

    .line 1247
    :cond_1
    :goto_0
    const-string v0, "default"

    return-object v0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1241
    sget-object v0, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1233
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private deleteApn()V
    .locals 3

    .line 1209
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v0}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1210
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v1}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1211
    new-instance v0, Lcom/android/settings/network/ApnEditor$ApnData;

    sget-object v1, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/android/settings/network/ApnEditor$ApnData;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    .line 1213
    :cond_0
    return-void
.end method

.method private disableAllFields()V
    .locals 2

    .line 532
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mName:Lcom/android/settings/widget/ValidatedEditTextPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setEnabled(Z)V

    .line 533
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApn:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setEnabled(Z)V

    .line 534
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setEnabled(Z)V

    .line 535
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPort:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setEnabled(Z)V

    .line 536
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mUser:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setEnabled(Z)V

    .line 537
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mServer:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setEnabled(Z)V

    .line 538
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setEnabled(Z)V

    .line 539
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setEnabled(Z)V

    .line 540
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setEnabled(Z)V

    .line 541
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setEnabled(Z)V

    .line 542
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setEnabled(Z)V

    .line 543
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setEnabled(Z)V

    .line 544
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setEnabled(Z)V

    .line 545
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 546
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 547
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 548
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 549
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/MultiSelectListPreference;->setEnabled(Z)V

    .line 550
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 551
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setEnabled(Z)V

    .line 552
    return-void
.end method

.method private disableFields([Ljava/lang/String;)V
    .locals 5
    .param p1, "apnFields"    # [Ljava/lang/String;

    .line 520
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 521
    .local v3, "apnField":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->getPreferenceFromFieldName(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    .line 522
    .local v4, "preference":Landroid/support/v7/preference/Preference;
    if-eqz v4, :cond_0

    .line 523
    invoke-virtual {v4, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 520
    .end local v3    # "apnField":Ljava/lang/String;
    .end local v4    # "preference":Landroid/support/v7/preference/Preference;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 526
    :cond_1
    return-void
.end method

.method private fieldValidate(Ljava/lang/String;)Z
    .locals 6
    .param p1, "field"    # Ljava/lang/String;

    .line 1291
    sget-object v0, Lcom/android/settings/network/ApnEditor;->sUIConfigurableItems:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1292
    .local v4, "tableField":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1293
    const/4 v0, 0x1

    return v0

    .line 1291
    .end local v4    # "tableField":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1295
    :cond_1
    sget-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not configurable"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    return v2
.end method

.method private findIndexOfKey(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1282
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1283
    sget-object v1, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1284
    return v0

    .line 1282
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1287
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method static formatInteger(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 400
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 401
    .local v0, "intValue":I
    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 402
    .end local v0    # "intValue":I
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-object p0
.end method

.method private getPreferenceFromFieldName(Ljava/lang/String;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p1, "apnField"    # Ljava/lang/String;

    .line 468
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "authtype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "password"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "mmsport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "proxy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "port"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "mmsc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "mnc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "mcc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "apn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "mvno_match_data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_1

    :sswitch_d
    const-string v0, "server"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_e
    const-string v0, "protocol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_f
    const-string v0, "roaming_protocol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_10
    const-string v0, "bearer_bitmask"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_11
    const-string v0, "bearer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_12
    const-string v0, "carrier_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_13
    const-string v0, "mmsproxy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_14
    const-string v0, "mvno_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 511
    const/4 v0, 0x0

    return-object v0

    .line 509
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Lcom/android/settings/widget/ValidatedEditTextPreference;

    return-object v0

    .line 507
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    return-object v0

    .line 505
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    return-object v0

    .line 502
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    return-object v0

    .line 500
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    return-object v0

    .line 498
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    return-object v0

    .line 496
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    return-object v0

    .line 494
    :pswitch_7
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Lcom/android/settings/widget/ValidatedEditTextPreference;

    return-object v0

    .line 492
    :pswitch_8
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Lcom/android/settings/widget/ValidatedEditTextPreference;

    return-object v0

    .line 490
    :pswitch_9
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Lcom/android/settings/widget/ValidatedEditTextPreference;

    return-object v0

    .line 488
    :pswitch_a
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Lcom/android/settings/widget/ValidatedEditTextPreference;

    return-object v0

    .line 486
    :pswitch_b
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Lcom/android/settings/widget/ValidatedEditTextPreference;

    return-object v0

    .line 484
    :pswitch_c
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Lcom/android/settings/widget/ValidatedEditTextPreference;

    return-object v0

    .line 482
    :pswitch_d
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Lcom/android/settings/widget/ValidatedEditTextPreference;

    return-object v0

    .line 480
    :pswitch_e
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mServer:Lcom/android/settings/widget/ValidatedEditTextPreference;

    return-object v0

    .line 478
    :pswitch_f
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mUser:Lcom/android/settings/widget/ValidatedEditTextPreference;

    return-object v0

    .line 476
    :pswitch_10
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPort:Lcom/android/settings/widget/ValidatedEditTextPreference;

    return-object v0

    .line 474
    :pswitch_11
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Lcom/android/settings/widget/ValidatedEditTextPreference;

    return-object v0

    .line 472
    :pswitch_12
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApn:Lcom/android/settings/widget/ValidatedEditTextPreference;

    return-object v0

    .line 470
    :pswitch_13
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mName:Lcom/android/settings/widget/ValidatedEditTextPreference;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7f4962d1 -> :sswitch_14
        -0x747b9085 -> :sswitch_13
        -0x61c86706 -> :sswitch_12
        -0x5307fc9f -> :sswitch_11
        -0x49581165 -> :sswitch_10
        -0x3df71002 -> :sswitch_f
        -0x3af57168 -> :sswitch_e
        -0x35fdd0bd -> :sswitch_d
        -0x1f00dbe7 -> :sswitch_c
        0x17a1f -> :sswitch_b
        0x1a58d -> :sswitch_a
        0x1a6e2 -> :sswitch_9
        0x3333f0 -> :sswitch_8
        0x337a8b -> :sswitch_7
        0x349881 -> :sswitch_6
        0x368f3a -> :sswitch_5
        0x36ebcb -> :sswitch_4
        0x65fca6e -> :sswitch_3
        0x46909dd4 -> :sswitch_2
        0x4889ba9b -> :sswitch_1
        0x556d58e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getUserEnteredApnType()Ljava/lang/String;
    .locals 9

    .line 1301
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1302
    .local v0, "userEnteredApnType":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1303
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "*"

    .line 1304
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    .line 1305
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1307
    .local v1, "editableApnTypes":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1308
    .local v2, "readOnlyApnTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 1309
    .local v3, "first":Z
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants;->APN_TYPES:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 1311
    .local v7, "apnType":Ljava/lang/String;
    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "ia"

    .line 1312
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "emergency"

    .line 1313
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1314
    if-eqz v3, :cond_2

    .line 1315
    const/4 v3, 0x0

    goto :goto_1

    .line 1317
    :cond_2
    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    :goto_1
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    .end local v7    # "apnType":Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1322
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1323
    sget-object v4, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUserEnteredApnType: changed apn type to editable apn types: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    .end local v1    # "editableApnTypes":Ljava/lang/StringBuilder;
    .end local v2    # "readOnlyApnTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "first":Z
    :cond_5
    return-object v0
.end method

.method static hasAllApns([Ljava/lang/String;)Z
    .locals 8
    .param p0, "apnTypes"    # [Ljava/lang/String;

    .line 413
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 414
    return v1

    .line 417
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 418
    .local v0, "apnList":Ljava/util/List;
    const-string v2, "*"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 419
    sget-object v1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v2, "hasAllApns: true because apnList.contains(PhoneConstants.APN_TYPE_ALL)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return v3

    .line 422
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants;->APN_TYPES:[Ljava/lang/String;

    array-length v4, v2

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v2, v5

    .line 423
    .local v6, "apn":Ljava/lang/String;
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 424
    return v1

    .line 422
    .end local v6    # "apn":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 428
    :cond_3
    sget-object v1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v2, "hasAllApns: true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return v3
.end method

.method public static synthetic lambda$updateApnDataToDatabase$0(Lcom/android/settings/network/ApnEditor;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 1143
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1145
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1146
    .local v0, "newUri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 1147
    sget-object v1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t add a new apn to database "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    .end local v0    # "newUri":Landroid/net/Uri;
    :cond_0
    goto :goto_0

    .line 1151
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1154
    :goto_0
    return-void
.end method

.method private mvnoDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "newValue"    # Ljava/lang/String;

    .line 734
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 735
    .local v0, "mvnoIndex":I
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 737
    .local v1, "oldValue":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 738
    return-object v2

    .line 740
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f03006a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 741
    .local v3, "values":[Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    .line 743
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v7, "mvno_match_data"

    .line 744
    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v5

    .line 745
    .local v4, "mvnoMatchDataUneditable":Z
    :goto_1
    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Lcom/android/settings/widget/ValidatedEditTextPreference;

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    invoke-virtual {v7, v5}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setEnabled(Z)V

    .line 746
    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 747
    aget-object v5, v3, v0

    const-string v6, "SPN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 748
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_3

    .line 749
    :cond_4
    aget-object v5, v3, v0

    const-string v6, "IMSI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 750
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v6, p0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v5

    .line 751
    .local v5, "numeric":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Lcom/android/settings/widget/ValidatedEditTextPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setText(Ljava/lang/String;)V

    .line 752
    .end local v5    # "numeric":Ljava/lang/String;
    goto :goto_3

    :cond_5
    aget-object v5, v3, v0

    const-string v6, "GID"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 753
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_3

    .line 754
    :cond_6
    aget-object v5, v3, v0

    const-string v6, "ICCID"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 755
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 756
    sget-object v5, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMvnoMatchDataStr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setText(Ljava/lang/String;)V

    .line 763
    :cond_7
    :goto_3
    :try_start_0
    aget-object v5, v3, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 764
    :catch_0
    move-exception v5

    .line 765
    .local v5, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return-object v2
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)Ljava/lang/String;
    .locals 4
    .param p1, "raw"    # Ljava/lang/String;
    .param p2, "protocol"    # Landroid/support/v7/preference/ListPreference;

    .line 696
    invoke-virtual {p2, p1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 697
    .local v0, "protocolIndex":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 698
    return-object v1

    .line 700
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 702
    .local v2, "values":[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 703
    :catch_0
    move-exception v3

    .line 704
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return-object v1
.end method

.method private setAppData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;

    .line 1275
    invoke-direct {p0, p1}, Lcom/android/settings/network/ApnEditor;->findIndexOfKey(Ljava/lang/String;)I

    move-result v0

    .line 1276
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1277
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v1, v0, p2}, Lcom/android/settings/network/ApnEditor$ApnData;->setObject(ILjava/lang/Object;)V

    .line 1279
    :cond_0
    return-void
.end method

.method private setDefaultData()V
    .locals 7

    .line 1255
    const-string v0, "carrier_config"

    .line 1256
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1257
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v0, :cond_1

    .line 1258
    iget v1, p0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1259
    .local v1, "b":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_1

    .line 1260
    const-string v2, "apn_default_values_strings_array"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1262
    .local v2, "defaultValues":Landroid/os/PersistableBundle;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1263
    invoke-virtual {v2}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1264
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1265
    .local v5, "key":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/settings/network/ApnEditor;->fieldValidate(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1266
    invoke-virtual {v2, v5}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/settings/network/ApnEditor;->setAppData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1268
    .end local v5    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1272
    .end local v1    # "b":Landroid/os/PersistableBundle;
    .end local v2    # "defaultValues":Landroid/os/PersistableBundle;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 1216
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1219
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 1220
    .local v0, "password":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1221
    const/16 v2, 0x2a

    aput-char v2, v0, v1

    .line 1220
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1223
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 1217
    .end local v0    # "password":[C
    :cond_2
    :goto_1
    sget-object v0, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    return-object v0
.end method

.method private updateApnDataToDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 1142
    new-instance v0, Lcom/android/settings/network/-$$Lambda$ApnEditor$1vSLgWOnd4pMuFU2qFaSz0HXNw8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/network/-$$Lambda$ApnEditor$1vSLgWOnd4pMuFU2qFaSz0HXNw8;-><init>(Lcom/android/settings/network/ApnEditor;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 1155
    return-void
.end method


# virtual methods
.method fillUI(Z)V
    .locals 8
    .param p1, "firstTime"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 561
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_9

    .line 563
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mName:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v3, v1}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setText(Ljava/lang/String;)V

    .line 564
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApn:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setText(Ljava/lang/String;)V

    .line 565
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setText(Ljava/lang/String;)V

    .line 566
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mPort:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setText(Ljava/lang/String;)V

    .line 567
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mUser:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setText(Ljava/lang/String;)V

    .line 568
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mServer:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v6, 0x6

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setText(Ljava/lang/String;)V

    .line 569
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v6, 0x7

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setText(Ljava/lang/String;)V

    .line 570
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v6, 0xc

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setText(Ljava/lang/String;)V

    .line 571
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v6, 0xd

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setText(Ljava/lang/String;)V

    .line 572
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setText(Ljava/lang/String;)V

    .line 573
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v6, 0x9

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setText(Ljava/lang/String;)V

    .line 574
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setText(Ljava/lang/String;)V

    .line 575
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v6, 0xf

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setText(Ljava/lang/String;)V

    .line 576
    iget-boolean v2, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    if-eqz v2, :cond_1

    .line 577
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v2

    .line 579
    .local v2, "numeric":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 581
    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 583
    .local v3, "mcc":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 585
    .local v4, "mnc":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v5, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setText(Ljava/lang/String;)V

    .line 586
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v5, v4}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setText(Ljava/lang/String;)V

    .line 587
    iput-object v4, p0, Lcom/android/settings/network/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 588
    iput-object v3, p0, Lcom/android/settings/network/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 591
    .end local v3    # "mcc":Ljava/lang/String;
    .end local v4    # "mnc":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Lcom/android/settings/widget/ValidatedEditTextPreference;

    const-string v4, "default"

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setText(Ljava/lang/String;)V

    .line 594
    .end local v2    # "numeric":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v3, 0xe

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 595
    .local v2, "authVal":I
    if-eq v2, v4, :cond_2

    .line 596
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0

    .line 598
    :cond_2
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 601
    :goto_0
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 602
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 603
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v5, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_3

    move v4, v1

    goto :goto_1

    :cond_3
    move v4, v0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 604
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v4, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    .line 606
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 607
    .local v3, "bearers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v5, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 608
    .local v4, "bearerBitmask":I
    if-nez v4, :cond_4

    .line 609
    iget v5, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    if-nez v5, :cond_7

    .line 610
    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 613
    :cond_4
    move v5, v4

    move v4, v1

    .line 614
    .local v4, "i":I
    .local v5, "bearerBitmask":I
    :goto_2
    if-eqz v5, :cond_6

    .line 615
    and-int/lit8 v6, v5, 0x1

    if-ne v6, v1, :cond_5

    .line 616
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 618
    :cond_5
    shr-int/lit8 v5, v5, 0x1

    .line 619
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 623
    .end local v4    # "i":I
    :cond_6
    move v4, v5

    .end local v5    # "bearerBitmask":I
    .local v4, "bearerBitmask":I
    :cond_7
    :goto_3
    iget v5, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 625
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 627
    :cond_8
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v5, v3}, Landroid/support/v14/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 629
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v7, 0x15

    invoke-virtual {v6, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 630
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v5, v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setEnabled(Z)V

    .line 631
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v7, 0x16

    invoke-virtual {v6, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setText(Ljava/lang/String;)V

    .line 640
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v6, v1}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->getLocalizedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 641
    .local v5, "localizedName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 642
    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mName:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v6, v5}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setText(Ljava/lang/String;)V

    .line 646
    .end local v2    # "authVal":I
    .end local v3    # "bearers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "bearerBitmask":I
    .end local v5    # "localizedName":Ljava/lang/String;
    :cond_9
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mName:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mName:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 647
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApn:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApn:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 648
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 649
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mPort:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mPort:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 650
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mUser:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mUser:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mServer:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mServer:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 652
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 654
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 655
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 656
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/network/ApnEditor;->formatInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 657
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/network/ApnEditor;->formatInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 660
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 662
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 663
    .local v2, "authVal":Ljava/lang/String;
    if-eqz v2, :cond_a

    .line 664
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 665
    .local v3, "authValIndex":I
    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 667
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 668
    .local v4, "values":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 669
    .end local v3    # "authValIndex":I
    .end local v4    # "values":[Ljava/lang/String;
    goto :goto_4

    .line 670
    :cond_a
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    sget-object v4, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 673
    :goto_4
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v4, v5}, Lcom/android/settings/network/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 674
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    .line 675
    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v4, v5}, Lcom/android/settings/network/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 674
    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 676
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    .line 677
    invoke-virtual {v4}, Landroid/support/v14/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 676
    invoke-virtual {v3, v4}, Landroid/support/v14/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    .line 679
    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 678
    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 680
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v4}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 682
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 683
    .local v3, "ceEditable":Z
    if-eqz v3, :cond_b

    .line 684
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_5

    .line 686
    :cond_b
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 688
    :goto_5
    return-void
.end method

.method getApnDataFromUri(Landroid/net/Uri;)Lcom/android/settings/network/ApnEditor$ApnData;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1357
    const/4 v0, 0x0

    move-object v1, v0

    .line 1358
    .local v1, "apnData":Lcom/android/settings/network/ApnEditor$ApnData;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1364
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_2

    .line 1365
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1366
    new-instance v3, Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-direct {v3, p1, v2}, Lcom/android/settings/network/ApnEditor$ApnData;-><init>(Landroid/net/Uri;Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    goto :goto_2

    .line 1369
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 1358
    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1369
    :goto_0
    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_4
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    throw v3

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1372
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_3
    goto :goto_3

    .line 1369
    :catch_2
    move-exception v0

    .line 1370
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApnDataFromUri exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    const/4 v1, 0x0

    .line 1375
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    if-nez v1, :cond_4

    .line 1376
    sget-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get apnData from Uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_4
    return-object v1
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 556
    const/16 v0, 0xd

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 260
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 262
    const v0, 0x7f160010

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->addPreferencesFromResource(I)V

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 281
    const-string v0, "apn_name"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mName:Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 282
    const-string v0, "apn_apn"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApn:Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 283
    const-string v0, "apn_http_proxy"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 284
    const-string v0, "apn_http_port"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPort:Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 285
    const-string v0, "apn_user"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mUser:Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 286
    const-string v0, "apn_server"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mServer:Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 287
    const-string v0, "apn_password"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 288
    const-string v0, "apn_mms_proxy"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 289
    const-string v0, "apn_mms_port"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 290
    const-string v0, "apn_mmsc"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 291
    const-string v0, "apn_mcc"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 292
    const-string v0, "apn_mnc"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 293
    const-string v0, "apn_type"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 295
    const-string v0, "auth_type"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    .line 296
    const-string v0, "apn_protocol"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    .line 297
    const-string v0, "apn_roaming_protocol"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    .line 298
    const-string v0, "carrier_enabled"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    .line 299
    const-string v0, "bearer_multi"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/MultiSelectListPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    .line 301
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    const v1, 0x7f120594

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/MultiSelectListPreference;->setPositiveButtonText(I)V

    .line 302
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    const v1, 0x7f12058e

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/MultiSelectListPreference;->setNegativeButtonText(I)V

    .line 304
    const-string v0, "mvno_type"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    .line 307
    const-string v0, "mvno_match_data"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 311
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "action":Ljava/lang/String;
    const-string v2, "sub_id"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    .line 315
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    .line 316
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    .line 317
    iput-object v3, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    .line 319
    const-string v3, "carrier_config"

    .line 320
    invoke-virtual {p0, v3}, Lcom/android/settings/network/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CarrierConfigManager;

    .line 321
    .local v3, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v3, :cond_1

    .line 322
    iget v4, p0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    invoke-virtual {v3, v4}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 323
    .local v4, "b":Landroid/os/PersistableBundle;
    if-eqz v4, :cond_1

    .line 324
    const-string v5, "read_only_apn_types_string_array"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    .line 326
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 327
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    array-length v6, v5

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 328
    .local v8, "apnType":Ljava/lang/String;
    sget-object v9, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreate: read only APN type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local v8    # "apnType":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 331
    :cond_0
    const-string v5, "read_only_apn_fields_string_array"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    .line 336
    .end local v4    # "b":Landroid/os/PersistableBundle;
    :cond_1
    const/4 v4, 0x0

    .line 337
    .local v4, "uri":Landroid/net/Uri;
    const-string v5, "android.intent.action.EDIT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 338
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 339
    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 340
    sget-object v2, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Edit request not for carrier table. Uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    .line 342
    return-void

    .line 344
    :cond_2
    const-string v5, "android.intent.action.INSERT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 345
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    .line 346
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 347
    sget-object v2, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert request not for carrier table. Uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    .line 349
    return-void

    .line 351
    :cond_3
    iput-boolean v6, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    .line 352
    const-string v5, "mvno_type"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    .line 353
    const-string v5, "mvno_match_data"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    .line 362
    :cond_4
    if-eqz v4, :cond_5

    .line 363
    invoke-virtual {p0, v4}, Lcom/android/settings/network/ApnEditor;->getApnDataFromUri(Landroid/net/Uri;)Lcom/android/settings/network/ApnEditor$ApnData;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    goto :goto_1

    .line 365
    :cond_5
    new-instance v5, Lcom/android/settings/network/ApnEditor$ApnData;

    sget-object v7, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    array-length v7, v7

    invoke-direct {v5, v7}, Lcom/android/settings/network/ApnEditor$ApnData;-><init>(I)V

    iput-object v5, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    .line 366
    const-string v5, "android.intent.action.INSERT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 367
    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->setDefaultData()V

    .line 371
    :cond_6
    :goto_1
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/android/settings/network/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 373
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v7, 0x17

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v6, :cond_7

    move v5, v6

    goto :goto_2

    :cond_7
    move v5, v2

    .line 376
    .local v5, "isUserEdited":Z
    :goto_2
    sget-object v7, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreate: EDITED "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    if-nez v5, :cond_9

    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v8, 0x18

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v9, 0xf

    .line 379
    invoke-virtual {v8, v9}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/network/ApnEditor;->apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v8, 0x1a

    .line 380
    invoke-virtual {v7, v8}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v6, :cond_9

    .line 381
    :cond_8
    sget-object v7, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v8, "onCreate: apnTypesMatch; read-only APN"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iput-boolean v6, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    .line 383
    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->disableAllFields()V

    goto :goto_3

    .line 384
    :cond_9
    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 385
    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/settings/network/ApnEditor;->disableFields([Ljava/lang/String;)V

    .line 388
    :cond_a
    :goto_3
    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v8, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v6, :cond_b

    move v7, v6

    goto :goto_4

    :cond_b
    move v7, v2

    :goto_4
    iput-boolean v7, p0, Lcom/android/settings/network/ApnEditor;->mDeletableApn:Z

    .line 390
    move v7, v2

    .local v7, "i":I
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v8

    if-ge v7, v8, :cond_c

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 390
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 394
    .end local v7    # "i":I
    :cond_c
    if-nez p1, :cond_d

    move v2, v6

    nop

    :cond_d
    invoke-virtual {p0, v2}, Lcom/android/settings/network/ApnEditor;->fillUI(Z)V

    .line 395
    return-void

    .line 355
    .end local v5    # "isUserEdited":Z
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    .line 356
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 823
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 825
    iget-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mDeletableApn:Z

    if-eqz v0, :cond_0

    .line 826
    const/4 v0, 0x1

    const v2, 0x7f12093d

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f080188

    .line 827
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 829
    :cond_0
    const/4 v0, 0x2

    const v2, 0x7f12094a

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x108004e

    .line 830
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 831
    const/4 v0, 0x3

    const v2, 0x7f12093c

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    .line 832
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 833
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 873
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 874
    :cond_0
    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    .line 882
    return v1

    .line 876
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->validateAndSaveApnData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 877
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    .line 879
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 837
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 851
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 848
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    .line 849
    return v1

    .line 843
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->validateAndSaveApnData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    .line 846
    :cond_0
    return v1

    .line 839
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->deleteApn()V

    .line 840
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    .line 841
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 771
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, "key":Ljava/lang/String;
    const-string v1, "auth_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 774
    :try_start_0
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 775
    .local v1, "index":I
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 777
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 778
    .local v3, "values":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    .end local v1    # "index":I
    .end local v3    # "values":[Ljava/lang/String;
    goto/16 :goto_2

    .line 779
    :catch_0
    move-exception v1

    .line 780
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v2

    .line 782
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const-string v1, "apn_protocol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 783
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/network/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)Ljava/lang/String;

    move-result-object v1

    .line 784
    .local v1, "protocol":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 785
    return v2

    .line 787
    :cond_1
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 788
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 789
    .end local v1    # "protocol":Ljava/lang/String;
    goto/16 :goto_2

    :cond_2
    const-string v1, "apn_roaming_protocol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 790
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/network/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)Ljava/lang/String;

    move-result-object v1

    .line 791
    .restart local v1    # "protocol":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 792
    return v2

    .line 794
    :cond_3
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 795
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 796
    .end local v1    # "protocol":Ljava/lang/String;
    goto/16 :goto_2

    :cond_4
    const-string v1, "bearer_multi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 797
    move-object v1, p2

    check-cast v1, Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    .line 798
    .local v1, "bearer":Ljava/lang/String;
    if-nez v1, :cond_5

    .line 799
    return v2

    .line 801
    :cond_5
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    move-object v3, p2

    check-cast v3, Ljava/util/Set;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 802
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 803
    .end local v1    # "bearer":Ljava/lang/String;
    goto :goto_2

    :cond_6
    const-string v1, "mvno_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 804
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 805
    .local v1, "mvno":Ljava/lang/String;
    if-nez v1, :cond_7

    .line 806
    return v2

    .line 808
    :cond_7
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 809
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 810
    .end local v1    # "mvno":Ljava/lang/String;
    goto :goto_2

    :cond_8
    const-string v1, "apn_password"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 811
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Lcom/android/settings/widget/ValidatedEditTextPreference;

    if-eqz p2, :cond_9

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_9
    const-string v2, ""

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 812
    :cond_a
    const-string v1, "carrier_enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_2

    .line 815
    :cond_b
    if-eqz p2, :cond_c

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_c
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 818
    :goto_2
    const/4 v1, 0x1

    return v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 857
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 858
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 859
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 860
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 861
    return-void
.end method

.method setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z
    .locals 3
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I
    .param p4, "assumeDiff"    # Z
    .param p5, "index"    # I

    .line 923
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v0, p5}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 931
    .local v0, "valueFromLocalCache":Ljava/lang/Integer;
    if-nez p4, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq p3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 932
    .local v1, "isDiff":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 933
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 935
    :cond_2
    return v1
.end method

.method setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 2
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "assumeDiff"    # Z
    .param p5, "index"    # I

    .line 897
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v0, p5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 904
    .local v0, "valueFromLocalCache":Ljava/lang/String;
    if-nez p4, :cond_2

    .line 905
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    .line 906
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 908
    .local v1, "isDiff":Z
    :goto_1
    if-eqz v1, :cond_3

    if-eqz p3, :cond_3

    .line 909
    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    :cond_3
    return v1
.end method

.method showError()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1205
    invoke-static {p0}, Lcom/android/settings/network/ApnEditor$ErrorDialog;->showError(Lcom/android/settings/network/ApnEditor;)V

    .line 1206
    return-void
.end method

.method validateAndSaveApnData()Z
    .locals 20
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 949
    move-object/from16 v10, p0

    iget-boolean v0, v10, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    const/4 v11, 0x1

    if-eqz v0, :cond_0

    .line 950
    return v11

    .line 953
    :cond_0
    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mName:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 954
    .local v12, "name":Ljava/lang/String;
    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mApn:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 955
    .local v13, "apn":Ljava/lang/String;
    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mMcc:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 956
    .local v14, "mcc":Ljava/lang/String;
    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mMnc:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 958
    .local v15, "mnc":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->validateApnData()Ljava/lang/String;

    move-result-object v16

    .line 959
    .local v16, "errorMsg":Ljava/lang/String;
    const/4 v6, 0x0

    if-eqz v16, :cond_1

    .line 960
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->showError()V

    .line 961
    return v6

    .line 964
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v9, v0

    .line 967
    .local v9, "values":Landroid/content/ContentValues;
    iget-boolean v7, v10, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    .line 968
    .local v7, "callUpdate":Z
    const-string v2, "name"

    const/4 v5, 0x1

    move-object v0, v10

    move-object v1, v9

    move-object v3, v12

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 974
    const-string v2, "apn"

    const/4 v5, 0x2

    move-object v3, v13

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 980
    const-string v2, "proxy"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mProxy:Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 982
    invoke-virtual {v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    .line 980
    move-object v0, v10

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 986
    const-string v2, "port"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mPort:Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 988
    invoke-virtual {v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    .line 986
    move-object v0, v10

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 992
    const-string v2, "mmsproxy"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 994
    invoke-virtual {v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xc

    .line 992
    move-object v0, v10

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 998
    const-string v2, "mmsport"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mMmsPort:Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 1000
    invoke-virtual {v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xd

    .line 998
    move-object v0, v10

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 1004
    const-string v2, "user"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mUser:Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 1006
    invoke-virtual {v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    .line 1004
    move-object v0, v10

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 1010
    const-string v2, "server"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mServer:Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 1012
    invoke-virtual {v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    .line 1010
    move-object v0, v10

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 1016
    const-string v2, "password"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mPassword:Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 1018
    invoke-virtual {v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x7

    .line 1016
    move-object v0, v10

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 1022
    const-string v2, "mmsc"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mMmsc:Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 1024
    invoke-virtual {v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x8

    .line 1022
    move-object v0, v10

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 1028
    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 1029
    .local v8, "authVal":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 1030
    const-string v2, "authtype"

    .line 1032
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0xe

    .line 1030
    move-object v0, v10

    move-object v1, v9

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v0

    .line 1037
    .end local v7    # "callUpdate":Z
    .local v0, "callUpdate":Z
    move v7, v0

    .end local v0    # "callUpdate":Z
    .restart local v7    # "callUpdate":Z
    :cond_2
    const-string v2, "protocol"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    .line 1039
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    .line 1037
    move-object v0, v10

    move-object v1, v9

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 1043
    const-string v2, "roaming_protocol"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    .line 1045
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x14

    .line 1043
    move-object v0, v10

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 1049
    const-string v2, "type"

    .line 1053
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->getUserEnteredApnType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xf

    .line 1049
    move-object v0, v10

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 1058
    const-string v2, "mcc"

    const/16 v5, 0x9

    move-object v3, v14

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 1064
    const-string v2, "mnc"

    const/16 v5, 0xa

    move-object v3, v15

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 1070
    const-string v0, "numeric"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1073
    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1074
    const-string v0, "current"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1078
    :cond_3
    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v5

    .line 1079
    .local v5, "bearerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1080
    .local v0, "bearerBitmask":I
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1081
    .local v2, "bearer":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 1082
    const/4 v0, 0x0

    .line 1083
    goto :goto_1

    .line 1085
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v3

    or-int/2addr v0, v3

    .line 1087
    .end local v2    # "bearer":Ljava/lang/String;
    goto :goto_0

    .line 1088
    .end local v0    # "bearerBitmask":I
    .local v4, "bearerBitmask":I
    :cond_5
    :goto_1
    move v4, v0

    const-string v2, "bearer_bitmask"

    const/16 v17, 0x13

    move-object v0, v10

    move-object v1, v9

    move v3, v4

    move v11, v4

    move v4, v7

    .end local v4    # "bearerBitmask":I
    .local v11, "bearerBitmask":I
    move-object/from16 v18, v5

    move/from16 v5, v17

    .end local v5    # "bearerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v18, "bearerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v7

    .line 1095
    if-eqz v11, :cond_8

    iget v0, v10, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    if-nez v0, :cond_6

    goto :goto_2

    .line 1097
    :cond_6
    iget v0, v10, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    invoke-static {v11, v0}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1098
    iget v0, v10, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    goto :goto_3

    .line 1103
    :cond_7
    move v3, v6

    goto :goto_4

    .line 1096
    :cond_8
    :goto_2
    const/4 v0, 0x0

    .line 1103
    .local v0, "bearerVal":I
    .local v3, "bearerVal":I
    :goto_3
    move v3, v0

    .line 1105
    .end local v0    # "bearerVal":I
    :goto_4
    const-string v2, "bearer"

    const/16 v5, 0x12

    move-object v0, v10

    move-object v1, v9

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v0

    .line 1111
    .end local v7    # "callUpdate":Z
    .local v0, "callUpdate":Z
    const-string v6, "mvno_type"

    iget-object v1, v10, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    .line 1113
    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v1, 0x15

    .line 1111
    move-object v4, v10

    move-object v5, v9

    move-object v2, v8

    move v8, v0

    .end local v8    # "authVal":Ljava/lang/String;
    .local v2, "authVal":Ljava/lang/String;
    move-object/from16 v19, v9

    move v9, v1

    .end local v9    # "values":Landroid/content/ContentValues;
    .local v19, "values":Landroid/content/ContentValues;
    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    .line 1117
    const-string v6, "mvno_match_data"

    iget-object v1, v10, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 1119
    invoke-virtual {v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x16

    .line 1117
    move-object/from16 v5, v19

    move v8, v0

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    .line 1123
    const-string v6, "carrier_enabled"

    .line 1125
    iget-object v1, v10, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v7

    const/16 v9, 0x11

    .line 1123
    move-object v4, v10

    move-object/from16 v5, v19

    move v8, v0

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/network/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v0

    .line 1129
    const-string v1, "edited"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v4, v19

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1131
    .end local v19    # "values":Landroid/content/ContentValues;
    .local v4, "values":Landroid/content/ContentValues;
    if-eqz v0, :cond_a

    .line 1132
    iget-object v1, v10, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v1}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_9

    iget-object v1, v10, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    goto :goto_5

    :cond_9
    iget-object v1, v10, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v1}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 1133
    .local v1, "uri":Landroid/net/Uri;
    :goto_5
    invoke-direct {v10, v1, v4}, Lcom/android/settings/network/ApnEditor;->updateApnDataToDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1138
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_a
    const/4 v1, 0x1

    return v1
.end method

.method validateApnData()Ljava/lang/String;
    .locals 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1164
    const/4 v0, 0x0

    .line 1166
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mName:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1167
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApn:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v2}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1168
    .local v2, "apn":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1169
    .local v3, "mcc":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v4}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1171
    .local v4, "mnc":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_0

    .line 1172
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f120628

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1173
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1174
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f120625

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1175
    :cond_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x3

    if-eq v5, v7, :cond_2

    goto :goto_0

    .line 1177
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const v7, 0xfffe

    and-int/2addr v5, v7

    if-eq v5, v6, :cond_5

    .line 1178
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f120627

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1176
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f120626

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1181
    :cond_5
    :goto_1
    if-nez v0, :cond_8

    .line 1184
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    .line 1185
    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->getUserEnteredApnType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/android/settings/network/ApnEditor;->apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1186
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1187
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    array-length v8, v7

    const/4 v9, 0x0

    move v10, v9

    :goto_2
    if-ge v10, v8, :cond_6

    aget-object v11, v7, v10

    .line 1188
    .local v11, "type":Ljava/lang/String;
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    sget-object v12, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "validateApnData: appending type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    .end local v11    # "type":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1192
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lt v7, v6, :cond_7

    .line 1193
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v7, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1195
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120624

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1200
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_8
    return-object v0
.end method
