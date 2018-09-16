.class public Lcom/android/settings/network/ApnSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "ApnSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field private static final APN_HIDE_RULE_STRINGS_ARRAY:Ljava/lang/String; = "apn_hide_rule_strings_array"

.field private static final APN_HIDE_RULE_STRINGS_WITH_ICCIDS_ARRAY:Ljava/lang/String; = "apn_hide_rule_strings_with_iccids_array"

.field public static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final APN_INDEX:I = 0x2

.field private static final BEARER_BITMASK_INDEX:I = 0x8

.field private static final BEARER_INDEX:I = 0x7

.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final DIALOG_RESTORE_DEFAULTAPN:I = 0x3e9

.field private static final EVENT_RESTORE_DEFAULTAPN_COMPLETE:I = 0x2

.field private static final EVENT_RESTORE_DEFAULTAPN_START:I = 0x1

.field public static final EXTRA_POSITION:Ljava/lang/String; = "position"

.field private static final ID_INDEX:I = 0x0

.field private static final INCLUDE_COMMON_RULES:Ljava/lang/String; = "include_common_rules"

.field private static final MENU_NEW:I = 0x1

.field private static final MENU_RESTORE:I = 0x2

.field public static final MVNO_MATCH_DATA:Ljava/lang/String; = "mvno_match_data"

.field private static final MVNO_MATCH_DATA_INDEX:I = 0x5

.field public static final MVNO_TYPE:Ljava/lang/String; = "mvno_type"

.field private static final MVNO_TYPE_INDEX:I = 0x4

.field private static final NAME_INDEX:I = 0x1

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field public static final PREFERRED_APN_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn"

.field public static final RESTORE_CARRIERS_URI:Ljava/lang/String; = "content://telephony/carriers/restore"

.field private static final RO_INDEX:I = 0x6

.field public static final SUB_ID:Ljava/lang/String; = "sub_id"

.field static final TAG:Ljava/lang/String; = "ApnSettings"

.field private static final TYPES_INDEX:I = 0x3

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field private mAllowAddingApns:Z

.field private mHideApnsGroupByIccid:Landroid/os/PersistableBundle;

.field private mHideApnsWithIccidRule:[Ljava/lang/String;

.field private mHideApnsWithRule:[Ljava/lang/String;

.field private mHideImsApn:Z

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mMvnoMatchData:Ljava/lang/String;

.field private mMvnoType:Ljava/lang/String;

.field private mRestoreApnProcessHandler:Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mSelectedKey:Ljava/lang/String;

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUnavailable:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 110
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 140
    const-string v0, "no_config_mobile_networks"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 143
    new-instance v0, Lcom/android/settings/network/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/ApnSettings$1;-><init>(Lcom/android/settings/network/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .line 76
    invoke-static {p0}, Lcom/android/settings/network/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 76
    sget-boolean v0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 76
    sput-boolean p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/network/ApnSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/network/ApnSettings;

    .line 76
    invoke-direct {p0}, Lcom/android/settings/network/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/network/ApnSettings;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/network/ApnSettings;

    .line 76
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/network/ApnSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/network/ApnSettings;
    .param p1, "x1"    # I

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/settings/network/ApnSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/network/ApnSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/network/ApnSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/settings/network/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/network/ApnSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/network/ApnSettings;

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Landroid/net/Uri;
    .locals 1

    .line 76
    sget-object v0, Lcom/android/settings/network/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/network/ApnSettings;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/network/ApnSettings;
    .param p1, "x1"    # Landroid/net/Uri;

    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/network/ApnSettings;->getUriForCurrSubId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private addApnToList(Lcom/android/settings/network/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/settings/network/ApnPreference;
    .param p4, "r"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p5, "mvnoType"    # Ljava/lang/String;
    .param p6, "mvnoMatchData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/network/ApnPreference;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/network/ApnPreference;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/network/ApnPreference;",
            ">;",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 494
    .local p2, "mnoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    .local p3, "mvnoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    if-eqz p4, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    invoke-static {p4, p5, p6}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    iput-object p5, p0, Lcom/android/settings/network/ApnSettings;->mMvnoType:Ljava/lang/String;

    .line 499
    iput-object p6, p0, Lcom/android/settings/network/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    goto :goto_0

    .line 502
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_1
    :goto_0
    return-void
.end method

.method private addNewApn()V
    .locals 4

    .line 682
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 683
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    goto :goto_0

    .line 684
    :cond_0
    const/4 v1, -0x1

    .line 685
    .local v1, "subId":I
    :goto_0
    const-string v2, "sub_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 686
    iget-object v2, p0, Lcom/android/settings/network/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/network/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 687
    const-string v2, "mvno_type"

    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    const-string v2, "mvno_match_data"

    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 691
    return-void
.end method

.method private appendFilter(Ljava/lang/StringBuilder;)V
    .locals 8
    .param p1, "where"    # Ljava/lang/StringBuilder;

    .line 507
    const/4 v0, 0x1

    .line 508
    .local v0, "includeCommon":Z
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mHideApnsGroupByIccid:Landroid/os/PersistableBundle;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mHideApnsGroupByIccid:Landroid/os/PersistableBundle;

    invoke-virtual {v1}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mHideApnsGroupByIccid:Landroid/os/PersistableBundle;

    const-string v3, "include_common_rules"

    invoke-virtual {v1, v3, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 516
    const-string v1, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apn hidden rules specified iccid, include common rule: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mHideApnsGroupByIccid:Landroid/os/PersistableBundle;

    invoke-virtual {v1}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 518
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 519
    .local v4, "key":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/Utils;->carrierTableFieldValidate(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 520
    iget-object v5, p0, Lcom/android/settings/network/ApnSettings;->mHideApnsGroupByIccid:Landroid/os/PersistableBundle;

    invoke-virtual {v5, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 521
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 522
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " <> \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 539
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mHideApnsWithIccidRule:[Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 540
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mHideApnsWithIccidRule:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnSettings;->getApnRuleMap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 541
    .local v1, "ruleWithIccid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v3, :cond_2

    const-string v3, ""

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v3

    .line 542
    .local v3, "iccid":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v1, v3}, Lcom/android/settings/network/ApnSettings;->isOperatorIccid(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 543
    const-string v4, "include_common_rules"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 544
    .local v4, "s":Ljava/lang/String;
    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    move v2, v5

    nop

    :cond_4
    :goto_2
    move v0, v2

    .line 545
    const-string v2, "ApnSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "apn hidden rules in iccids, include common rule: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-direct {p0, v1, p1}, Lcom/android/settings/network/ApnSettings;->filterWithKey(Ljava/util/Map;Ljava/lang/StringBuilder;)V

    .line 550
    .end local v1    # "ruleWithIccid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "iccid":Ljava/lang/String;
    .end local v4    # "s":Ljava/lang/String;
    :cond_5
    if-eqz v0, :cond_6

    .line 557
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mHideApnsWithRule:[Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 558
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mHideApnsWithRule:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnSettings;->getApnRuleMap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 559
    .local v1, "rule":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v1, p1}, Lcom/android/settings/network/ApnSettings;->filterWithKey(Ljava/util/Map;Ljava/lang/StringBuilder;)V

    .line 562
    .end local v1    # "rule":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    return-void
.end method

.method private fillList()V
    .locals 40

    .line 337
    move-object/from16 v14, p0

    const/4 v0, 0x0

    .line 338
    .local v0, "isSelectedKeyMatch":Z
    const-string v1, "phone"

    invoke-virtual {v14, v1}, Lcom/android/settings/network/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/telephony/TelephonyManager;

    .line 339
    .local v15, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, v14, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    iget-object v1, v14, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    goto :goto_0

    .line 340
    :cond_0
    const/4 v1, -0x1

    :goto_0
    move v13, v1

    .line 341
    .local v13, "subId":I
    iget-object v1, v14, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    invoke-virtual {v15, v13}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v12, v1

    .line 342
    .local v12, "mccmnc":Ljava/lang/String;
    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mccmnc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" AND NOT (type=\'ia\' AND (apn=\"\" OR apn IS NULL)) AND user_visible!=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v11, v1

    .line 356
    .local v11, "where":Ljava/lang/StringBuilder;
    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "where = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v16, "_id"

    const-string v17, "name"

    const-string v18, "apn"

    const-string v19, "type"

    const-string v20, "mvno_type"

    const-string v21, "mvno_match_data"

    const-string v22, "read_only"

    const-string v23, "bearer"

    const-string v24, "bearer_bitmask"

    filled-new-array/range {v16 .. v24}, [Ljava/lang/String;

    move-result-object v5

    .line 364
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "_id"

    .line 362
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 368
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_11

    .line 369
    const/4 v1, 0x0

    .line 370
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v2, v14, Lcom/android/settings/network/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v7, 0x1

    if-eqz v2, :cond_2

    iget-object v2, v14, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_2

    .line 371
    iget-object v2, v14, Lcom/android/settings/network/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 372
    invoke-static {v13}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    .line 371
    invoke-virtual {v2, v3, v7}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 374
    .end local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .local v16, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_2
    move-object/from16 v16, v1

    const-string v1, "apn_list"

    invoke-virtual {v14, v1}, Lcom/android/settings/network/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/support/v7/preference/PreferenceGroup;

    .line 375
    .local v6, "apnList":Landroid/support/v7/preference/PreferenceGroup;
    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 377
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v2, "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v1

    .line 379
    .local v5, "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v9, "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v10, "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 383
    const-string v1, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 385
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_d

    .line 386
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "name":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 388
    .local v4, "apn":Ljava/lang/String;
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 389
    .local v7, "key":Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 390
    .local v3, "type":Ljava/lang/String;
    move-object/from16 v27, v1

    const/4 v1, 0x4

    .end local v1    # "name":Ljava/lang/String;
    .local v27, "name":Ljava/lang/String;
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 391
    .local v17, "mvnoType":Ljava/lang/String;
    const/4 v1, 0x5

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 392
    .local v18, "mvnoMatchData":Ljava/lang/String;
    const/4 v1, 0x6

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v28, v6

    const/4 v6, 0x1

    if-ne v1, v6, :cond_3

    .end local v6    # "apnList":Landroid/support/v7/preference/PreferenceGroup;
    .local v28, "apnList":Landroid/support/v7/preference/PreferenceGroup;
    move v1, v6

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 395
    .local v1, "readOnly":Z
    :goto_3
    move-object/from16 v29, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .end local v11    # "where":Ljava/lang/StringBuilder;
    .local v29, "where":Ljava/lang/StringBuilder;
    move-object/from16 v30, v12

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .end local v12    # "mccmnc":Ljava/lang/String;
    .local v30, "mccmnc":Ljava/lang/String;
    invoke-static {v11, v12}, Lcom/android/settings/Utils;->getLocalizedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 397
    .local v12, "localizedName":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 398
    move-object v6, v12

    .line 400
    .end local v27    # "name":Ljava/lang/String;
    .local v6, "name":Ljava/lang/String;
    move-object v11, v6

    goto :goto_4

    .end local v6    # "name":Ljava/lang/String;
    .restart local v27    # "name":Ljava/lang/String;
    :cond_4
    move-object/from16 v11, v27

    .end local v27    # "name":Ljava/lang/String;
    .local v11, "name":Ljava/lang/String;
    :goto_4
    const/4 v6, 0x7

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 401
    .local v6, "bearer":I
    move-object/from16 v31, v12

    const/16 v12, 0x8

    .end local v12    # "localizedName":Ljava/lang/String;
    .local v31, "localizedName":Ljava/lang/String;
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 402
    .local v19, "bearerBitMask":I
    invoke-static {v6}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v12

    or-int v12, v12, v19

    .line 403
    .local v12, "fullBearer":I
    move-object/from16 v32, v15

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v15

    .line 404
    .end local v15    # "tm":Landroid/telephony/TelephonyManager;
    .local v32, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v15, v13}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v15

    .line 403
    invoke-direct {v14, v15}, Lcom/android/settings/network/ApnSettings;->networkTypeToRilRidioTechnology(I)I

    move-result v15

    .line 405
    .local v15, "radioTech":I
    invoke-static {v12, v15}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v20

    if-nez v20, :cond_7

    if-nez v6, :cond_5

    if-eqz v19, :cond_7

    .line 408
    :cond_5
    if-nez v15, :cond_6

    if-nez v6, :cond_7

    if-nez v15, :cond_7

    .line 410
    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 411
    nop

    .line 385
    move-object/from16 v6, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object/from16 v15, v32

    const/4 v7, 0x1

    goto/16 :goto_2

    .line 414
    :cond_7
    move/from16 v33, v6

    new-instance v6, Lcom/android/settings/network/ApnPreference;

    .end local v6    # "bearer":I
    .local v33, "bearer":I
    move-object/from16 v34, v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v8

    .end local v8    # "cursor":Landroid/database/Cursor;
    .local v34, "cursor":Landroid/database/Cursor;
    invoke-direct {v6, v8}, Lcom/android/settings/network/ApnPreference;-><init>(Landroid/content/Context;)V

    move-object v8, v6

    .line 416
    .local v8, "pref":Lcom/android/settings/network/ApnPreference;
    invoke-virtual {v8, v7}, Lcom/android/settings/network/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v8, v11}, Lcom/android/settings/network/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 418
    invoke-virtual {v8, v4}, Lcom/android/settings/network/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 419
    const/4 v6, 0x0

    invoke-virtual {v8, v6}, Lcom/android/settings/network/ApnPreference;->setPersistent(Z)V

    .line 420
    invoke-virtual {v8, v14}, Lcom/android/settings/network/ApnPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 421
    invoke-virtual {v8, v13}, Lcom/android/settings/network/ApnPreference;->setSubId(I)V

    .line 427
    if-eqz v3, :cond_9

    const-string v6, "default"

    invoke-direct {v14, v3, v6}, Lcom/android/settings/network/ApnSettings;->isApnType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    const/16 v26, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/16 v26, 0x1

    :goto_6
    move/from16 v6, v26

    .line 429
    .local v6, "selectable":Z
    invoke-virtual {v8, v6}, Lcom/android/settings/network/ApnPreference;->setSelectable(Z)V

    .line 431
    move/from16 v35, v12

    const/4 v12, 0x1

    if-ne v1, v12, :cond_a

    .end local v12    # "fullBearer":I
    .local v35, "fullBearer":I
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_a

    const-string v12, "fota"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 432
    const-string v12, "ApnSettings"

    move/from16 v36, v1

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "readOnly":Z
    .local v36, "readOnly":Z
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v37, v3

    const-string v3, " apn is null"

    .end local v3    # "type":Ljava/lang/String;
    .local v37, "type":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    move-object/from16 v22, v4

    move/from16 v24, v6

    move-object v1, v7

    move-object/from16 v27, v11

    move/from16 v38, v15

    move-object/from16 v39, v28

    move-object/from16 v6, v29

    move-object/from16 v25, v30

    move-object/from16 v26, v31

    move/from16 v23, v33

    move-object/from16 v4, v34

    move/from16 v28, v35

    move/from16 v20, v36

    move-object/from16 v21, v37

    const/4 v3, 0x1

    move-object v15, v5

    move-object v5, v8

    goto/16 :goto_8

    .line 434
    .end local v36    # "readOnly":Z
    .end local v37    # "type":Ljava/lang/String;
    .restart local v1    # "readOnly":Z
    .restart local v3    # "type":Ljava/lang/String;
    :cond_a
    move/from16 v36, v1

    move-object/from16 v37, v3

    .end local v1    # "readOnly":Z
    .end local v3    # "type":Ljava/lang/String;
    .restart local v36    # "readOnly":Z
    .restart local v37    # "type":Ljava/lang/String;
    if-eqz v6, :cond_c

    .line 435
    iget-object v1, v14, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, v14, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 436
    invoke-virtual {v8}, Lcom/android/settings/network/ApnPreference;->setChecked()V

    .line 437
    const/4 v0, 0x1

    .line 438
    const-string v1, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "find select key = "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v14, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " apn: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 440
    :cond_b
    invoke-virtual {v8}, Lcom/android/settings/network/ApnPreference;->unsetChecked()V

    .line 442
    .end local v0    # "isSelectedKeyMatch":Z
    .local v12, "isSelectedKeyMatch":Z
    :goto_7
    move v12, v0

    move-object v0, v14

    move/from16 v20, v36

    move-object v1, v8

    .end local v36    # "readOnly":Z
    .local v20, "readOnly":Z
    move-object/from16 v21, v37

    move-object v3, v5

    .end local v37    # "type":Ljava/lang/String;
    .local v21, "type":Ljava/lang/String;
    move-object/from16 v22, v4

    move-object/from16 v4, v16

    .end local v4    # "apn":Ljava/lang/String;
    .local v22, "apn":Ljava/lang/String;
    move/from16 v38, v15

    move-object v15, v5

    move-object/from16 v5, v17

    .end local v5    # "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    .local v15, "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    .local v38, "radioTech":I
    move/from16 v24, v6

    move-object/from16 v39, v28

    move/from16 v23, v33

    move-object/from16 v6, v18

    .end local v6    # "selectable":Z
    .end local v28    # "apnList":Landroid/support/v7/preference/PreferenceGroup;
    .end local v33    # "bearer":I
    .local v23, "bearer":I
    .local v24, "selectable":Z
    .local v39, "apnList":Landroid/support/v7/preference/PreferenceGroup;
    invoke-direct/range {v0 .. v6}, Lcom/android/settings/network/ApnSettings;->addApnToList(Lcom/android/settings/network/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    move-object v1, v7

    move-object v5, v8

    move-object/from16 v27, v11

    move v0, v12

    move-object/from16 v6, v29

    move-object/from16 v25, v30

    move-object/from16 v26, v31

    move-object/from16 v4, v34

    move/from16 v28, v35

    const/4 v3, 0x1

    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "pref":Lcom/android/settings/network/ApnPreference;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "isSelectedKeyMatch":Z
    .end local v13    # "subId":I
    .end local v30    # "mccmnc":Ljava/lang/String;
    .end local v31    # "localizedName":Ljava/lang/String;
    .end local v34    # "cursor":Landroid/database/Cursor;
    .end local v35    # "fullBearer":I
    .restart local v0    # "isSelectedKeyMatch":Z
    .local v1, "key":Ljava/lang/String;
    .local v4, "cursor":Landroid/database/Cursor;
    .local v5, "pref":Lcom/android/settings/network/ApnPreference;
    .local v6, "where":Ljava/lang/StringBuilder;
    .local v25, "mccmnc":Ljava/lang/String;
    .local v26, "localizedName":Ljava/lang/String;
    .restart local v27    # "name":Ljava/lang/String;
    .local v28, "fullBearer":I
    .local v29, "subId":I
    :goto_8
    move/from16 v29, v13

    goto :goto_9

    .line 444
    .end local v1    # "key":Ljava/lang/String;
    .end local v20    # "readOnly":Z
    .end local v21    # "type":Ljava/lang/String;
    .end local v22    # "apn":Ljava/lang/String;
    .end local v23    # "bearer":I
    .end local v24    # "selectable":Z
    .end local v25    # "mccmnc":Ljava/lang/String;
    .end local v26    # "localizedName":Ljava/lang/String;
    .end local v27    # "name":Ljava/lang/String;
    .end local v38    # "radioTech":I
    .end local v39    # "apnList":Landroid/support/v7/preference/PreferenceGroup;
    .local v4, "apn":Ljava/lang/String;
    .local v5, "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    .local v6, "selectable":Z
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "pref":Lcom/android/settings/network/ApnPreference;
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v13    # "subId":I
    .local v15, "radioTech":I
    .local v28, "apnList":Landroid/support/v7/preference/PreferenceGroup;
    .local v29, "where":Ljava/lang/StringBuilder;
    .restart local v30    # "mccmnc":Ljava/lang/String;
    .restart local v31    # "localizedName":Ljava/lang/String;
    .restart local v33    # "bearer":I
    .restart local v34    # "cursor":Landroid/database/Cursor;
    .restart local v35    # "fullBearer":I
    .restart local v36    # "readOnly":Z
    .restart local v37    # "type":Ljava/lang/String;
    :cond_c
    move-object/from16 v22, v4

    move/from16 v24, v6

    move/from16 v38, v15

    move-object/from16 v39, v28

    move/from16 v23, v33

    move/from16 v20, v36

    move-object/from16 v21, v37

    move-object v15, v5

    .end local v4    # "apn":Ljava/lang/String;
    .end local v5    # "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    .end local v6    # "selectable":Z
    .end local v28    # "apnList":Landroid/support/v7/preference/PreferenceGroup;
    .end local v33    # "bearer":I
    .end local v36    # "readOnly":Z
    .end local v37    # "type":Ljava/lang/String;
    .local v15, "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    .restart local v20    # "readOnly":Z
    .restart local v21    # "type":Ljava/lang/String;
    .restart local v22    # "apn":Ljava/lang/String;
    .restart local v23    # "bearer":I
    .restart local v24    # "selectable":Z
    .restart local v38    # "radioTech":I
    .restart local v39    # "apnList":Landroid/support/v7/preference/PreferenceGroup;
    move-object v1, v7

    const/4 v3, 0x1

    move-object v7, v14

    .end local v7    # "key":Ljava/lang/String;
    .restart local v1    # "key":Ljava/lang/String;
    move-object v5, v8

    move-object/from16 v4, v34

    .end local v8    # "pref":Lcom/android/settings/network/ApnPreference;
    .end local v34    # "cursor":Landroid/database/Cursor;
    .local v4, "cursor":Landroid/database/Cursor;
    .local v5, "pref":Lcom/android/settings/network/ApnPreference;
    move-object/from16 v27, v11

    move-object/from16 v6, v29

    move-object/from16 v11, v16

    .end local v11    # "name":Ljava/lang/String;
    .end local v29    # "where":Ljava/lang/StringBuilder;
    .local v6, "where":Ljava/lang/StringBuilder;
    .restart local v27    # "name":Ljava/lang/String;
    move-object/from16 v25, v30

    move-object/from16 v26, v31

    move/from16 v28, v35

    move-object/from16 v12, v17

    .end local v30    # "mccmnc":Ljava/lang/String;
    .end local v31    # "localizedName":Ljava/lang/String;
    .end local v35    # "fullBearer":I
    .restart local v25    # "mccmnc":Ljava/lang/String;
    .restart local v26    # "localizedName":Ljava/lang/String;
    .local v28, "fullBearer":I
    move/from16 v29, v13

    move-object/from16 v13, v18

    .end local v13    # "subId":I
    .local v29, "subId":I
    invoke-direct/range {v7 .. v13}, Lcom/android/settings/network/ApnSettings;->addApnToList(Lcom/android/settings/network/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :goto_9
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 449
    .end local v1    # "key":Ljava/lang/String;
    .end local v5    # "pref":Lcom/android/settings/network/ApnPreference;
    .end local v17    # "mvnoType":Ljava/lang/String;
    .end local v18    # "mvnoMatchData":Ljava/lang/String;
    .end local v19    # "bearerBitMask":I
    .end local v20    # "readOnly":Z
    .end local v21    # "type":Ljava/lang/String;
    .end local v22    # "apn":Ljava/lang/String;
    .end local v23    # "bearer":I
    .end local v24    # "selectable":Z
    .end local v26    # "localizedName":Ljava/lang/String;
    .end local v27    # "name":Ljava/lang/String;
    .end local v28    # "fullBearer":I
    .end local v38    # "radioTech":I
    nop

    .line 385
    move v7, v3

    move-object v8, v4

    move-object v11, v6

    move-object v5, v15

    move-object/from16 v12, v25

    move/from16 v13, v29

    move-object/from16 v15, v32

    move-object/from16 v6, v39

    goto/16 :goto_2

    .line 450
    .end local v4    # "cursor":Landroid/database/Cursor;
    .end local v25    # "mccmnc":Ljava/lang/String;
    .end local v29    # "subId":I
    .end local v32    # "tm":Landroid/telephony/TelephonyManager;
    .end local v39    # "apnList":Landroid/support/v7/preference/PreferenceGroup;
    .local v5, "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    .local v6, "apnList":Landroid/support/v7/preference/PreferenceGroup;
    .local v8, "cursor":Landroid/database/Cursor;
    .local v11, "where":Ljava/lang/StringBuilder;
    .local v12, "mccmnc":Ljava/lang/String;
    .restart local v13    # "subId":I
    .local v15, "tm":Landroid/telephony/TelephonyManager;
    :cond_d
    move-object/from16 v39, v6

    move-object v4, v8

    move-object v6, v11

    move-object/from16 v25, v12

    move/from16 v29, v13

    move-object/from16 v32, v15

    move-object v15, v5

    .end local v5    # "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v11    # "where":Ljava/lang/StringBuilder;
    .end local v12    # "mccmnc":Ljava/lang/String;
    .end local v13    # "subId":I
    .restart local v4    # "cursor":Landroid/database/Cursor;
    .local v6, "where":Ljava/lang/StringBuilder;
    .local v15, "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    .restart local v25    # "mccmnc":Ljava/lang/String;
    .restart local v29    # "subId":I
    .restart local v32    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v39    # "apnList":Landroid/support/v7/preference/PreferenceGroup;
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 452
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 453
    move-object v1, v15

    .line 454
    .end local v2    # "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    .local v1, "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    move-object v2, v10

    .end local v9    # "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    .local v2, "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    goto :goto_a

    .line 459
    .end local v1    # "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    .local v2, "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    .restart local v9    # "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    :cond_e
    move-object v1, v2

    move-object v2, v9

    .end local v9    # "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    .restart local v1    # "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    .local v2, "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    :goto_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/Preference;

    .line 460
    .local v5, "preference":Landroid/support/v7/preference/Preference;
    move-object/from16 v7, v39

    invoke-virtual {v7, v5}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 461
    .end local v5    # "preference":Landroid/support/v7/preference/Preference;
    .end local v39    # "apnList":Landroid/support/v7/preference/PreferenceGroup;
    .local v7, "apnList":Landroid/support/v7/preference/PreferenceGroup;
    goto :goto_b

    .line 464
    .end local v7    # "apnList":Landroid/support/v7/preference/PreferenceGroup;
    .restart local v39    # "apnList":Landroid/support/v7/preference/PreferenceGroup;
    :cond_f
    move-object/from16 v7, v39

    .end local v39    # "apnList":Landroid/support/v7/preference/PreferenceGroup;
    .restart local v7    # "apnList":Landroid/support/v7/preference/PreferenceGroup;
    if-nez v0, :cond_10

    invoke-virtual {v7}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-lez v3, :cond_10

    .line 465
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/network/ApnPreference;

    .line 466
    .local v3, "pref":Lcom/android/settings/network/ApnPreference;
    invoke-virtual {v3}, Lcom/android/settings/network/ApnPreference;->setChecked()V

    .line 467
    invoke-virtual {v3}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v14, v5}, Lcom/android/settings/network/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 468
    const-string v5, "ApnSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set key to  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    .end local v3    # "pref":Lcom/android/settings/network/ApnPreference;
    :cond_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/Preference;

    .line 472
    .restart local v5    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v7, v5}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 473
    .end local v5    # "preference":Landroid/support/v7/preference/Preference;
    goto :goto_c

    .line 475
    .end local v1    # "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    .end local v2    # "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    .end local v4    # "cursor":Landroid/database/Cursor;
    .end local v6    # "where":Ljava/lang/StringBuilder;
    .end local v7    # "apnList":Landroid/support/v7/preference/PreferenceGroup;
    .end local v10    # "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    .end local v16    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v25    # "mccmnc":Ljava/lang/String;
    .end local v29    # "subId":I
    .end local v32    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "where":Ljava/lang/StringBuilder;
    .restart local v12    # "mccmnc":Ljava/lang/String;
    .restart local v13    # "subId":I
    .local v15, "tm":Landroid/telephony/TelephonyManager;
    :cond_11
    move-object v4, v8

    move-object v6, v11

    move-object/from16 v25, v12

    move/from16 v29, v13

    move-object/from16 v32, v15

    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v11    # "where":Ljava/lang/StringBuilder;
    .end local v12    # "mccmnc":Ljava/lang/String;
    .end local v13    # "subId":I
    .end local v15    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v4    # "cursor":Landroid/database/Cursor;
    .restart local v6    # "where":Ljava/lang/StringBuilder;
    .restart local v25    # "mccmnc":Ljava/lang/String;
    .restart local v29    # "subId":I
    .restart local v32    # "tm":Landroid/telephony/TelephonyManager;
    :cond_12
    return-void
.end method

.method private filterWithKey(Ljava/util/Map;Ljava/lang/StringBuilder;)V
    .locals 10
    .param p2, "where"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 565
    .local p1, "rules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 566
    .local v0, "fields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 567
    .local v2, "field":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/Utils;->carrierTableFieldValidate(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 568
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 569
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 570
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 571
    .local v4, "subValues":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 572
    .local v7, "subValue":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " <> \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .end local v7    # "subValue":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 576
    .end local v2    # "field":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "subValues":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 577
    :cond_1
    return-void
.end method

.method private getApnRuleMap([Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .param p1, "ruleArray"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 580
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 581
    .local v0, "rules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 582
    array-length v1, p1

    .line 583
    .local v1, "length":I
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ruleArray size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    if-lez v1, :cond_0

    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    .line 585
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 586
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 591
    .end local v1    # "length":I
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 194
    const-string v0, "state"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 196
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v1

    .line 198
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v1
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 7

    .line 728
    const/4 v0, 0x0

    .line 730
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnSettings;->getUriForCurrSubId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "_id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "name ASC"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 732
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 733
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 734
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 736
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 737
    return-object v0
.end method

.method private getUriForCurrSubId(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 764
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    goto :goto_0

    .line 765
    :cond_0
    const/4 v0, -0x1

    .line 766
    .local v0, "subId":I
    :goto_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 769
    :cond_1
    return-object p1
.end method

.method private isApnType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "types"    # Ljava/lang/String;
    .param p2, "requestType"    # Ljava/lang/String;

    .line 479
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 480
    return v1

    .line 482
    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    .line 483
    .local v5, "type":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 484
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 482
    .end local v5    # "type":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 485
    .restart local v5    # "type":Ljava/lang/String;
    :cond_2
    :goto_1
    return v1

    .line 488
    .end local v5    # "type":Ljava/lang/String;
    :cond_3
    return v3
.end method

.method private isOperatorIccid(Ljava/util/HashMap;Ljava/lang/String;)Z
    .locals 7
    .param p2, "iccid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 595
    .local p1, "ruleMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "iccid"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 596
    .local v0, "valuesOfIccid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 597
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, "iccids":[Ljava/lang/String;
    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 599
    .local v5, "subIccid":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 600
    const/4 v2, 0x1

    return v2

    .line 598
    .end local v5    # "subIccid":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 604
    .end local v1    # "iccids":[Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private networkTypeToRilRidioTechnology(I)I
    .locals 1
    .param p1, "nt"    # I

    .line 608
    packed-switch p1, :pswitch_data_0

    .line 646
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 644
    :pswitch_1
    const/16 v0, 0x13

    return v0

    .line 642
    :pswitch_2
    const/16 v0, 0x12

    return v0

    .line 640
    :pswitch_3
    const/16 v0, 0x11

    return v0

    .line 638
    :pswitch_4
    const/16 v0, 0x10

    return v0

    .line 636
    :pswitch_5
    const/16 v0, 0xf

    return v0

    .line 632
    :pswitch_6
    const/16 v0, 0xd

    return v0

    .line 634
    :pswitch_7
    const/16 v0, 0xe

    return v0

    .line 630
    :pswitch_8
    const/16 v0, 0xc

    return v0

    .line 620
    :pswitch_9
    const/16 v0, 0xb

    return v0

    .line 618
    :pswitch_a
    const/16 v0, 0xa

    return v0

    .line 616
    :pswitch_b
    const/16 v0, 0x9

    return v0

    .line 624
    :pswitch_c
    const/4 v0, 0x6

    return v0

    .line 628
    :pswitch_d
    const/16 v0, 0x8

    return v0

    .line 626
    :pswitch_e
    const/4 v0, 0x7

    return v0

    .line 622
    :pswitch_f
    const/4 v0, 0x5

    return v0

    .line 614
    :pswitch_10
    const/4 v0, 0x3

    return v0

    .line 612
    :pswitch_11
    const/4 v0, 0x2

    return v0

    .line 610
    :pswitch_12
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private restoreDefaultApn()Z
    .locals 4

    .line 741
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnSettings;->showDialog(I)V

    .line 742
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 744
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;

    if-nez v1, :cond_0

    .line 745
    new-instance v1, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/network/ApnSettings;Lcom/android/settings/network/ApnSettings$1;)V

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;

    .line 748
    :cond_0
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_2

    .line 750
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Restore default APN Handler: Process Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 752
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 753
    new-instance v1, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

    iget-object v2, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 754
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings/network/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

    .line 757
    :cond_2
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

    .line 758
    invoke-virtual {v1, v0}, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 759
    return v0
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 719
    iput-object p1, p0, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 720
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 722
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 723
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    sget-object v2, Lcom/android/settings/network/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnSettings;->getUriForCurrSubId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 725
    return-void
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 1
    .param p1, "dialogId"    # I

    .line 842
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 843
    const/16 v0, 0x243

    return v0

    .line 845
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 204
    const/16 v0, 0xc

    return v0
.end method

.method public getRestrictionEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 328
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_config_mobile_networks"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_config_mobile_networks"

    .line 329
    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    sget-object v1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v1

    .line 333
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 259
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120129

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->isUiRestricted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mUnavailable:Z

    .line 263
    iget-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mUnavailable:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnSettings;->setHasOptionsMenu(Z)V

    .line 264
    iget-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 265
    const v0, 0x7f1600a0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnSettings;->addPreferencesFromResource(I)V

    .line 266
    return-void

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 273
    :cond_1
    const v0, 0x7f160011

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnSettings;->addPreferencesFromResource(I)V

    .line 274
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 213
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 215
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "sub_id"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 218
    .local v2, "subId":I
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 221
    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/network/ApnSettings;->setIfOnlyAvailableForAdmins(Z)V

    .line 229
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 230
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/network/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 232
    const-string v3, "carrier_config"

    .line 233
    invoke-virtual {p0, v3}, Lcom/android/settings/network/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CarrierConfigManager;

    .line 234
    .local v3, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v3, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 235
    .local v4, "b":Landroid/os/PersistableBundle;
    const-string v5, "hide_ims_apn_bool"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/network/ApnSettings;->mHideImsApn:Z

    .line 236
    const-string v5, "allow_adding_apns_bool"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/network/ApnSettings;->mAllowAddingApns:Z

    .line 238
    const-string v5, "apn_hide_rule_strings_array"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/network/ApnSettings;->mHideApnsWithRule:[Ljava/lang/String;

    .line 239
    const-string v5, "apn_hide_rule_strings_with_iccids_array"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/network/ApnSettings;->mHideApnsWithIccidRule:[Ljava/lang/String;

    .line 240
    iget-object v5, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v5, :cond_0

    .line 241
    iget-object v5, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, "iccid":Ljava/lang/String;
    const-string v6, "ApnSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "iccid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/network/ApnSettings;->mHideApnsGroupByIccid:Landroid/os/PersistableBundle;

    .line 245
    .end local v5    # "iccid":Ljava/lang/String;
    :cond_0
    iget-boolean v5, p0, Lcom/android/settings/network/ApnSettings;->mAllowAddingApns:Z

    if-eqz v5, :cond_1

    .line 246
    const-string v5, "read_only_apn_types_string_array"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, "readOnlyApnTypes":[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/network/ApnEditor;->hasAllApns([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 250
    const-string v6, "ApnSettings"

    const-string v7, "not allowing adding APN because all APN types are read only"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iput-boolean v1, p0, Lcom/android/settings/network/ApnSettings;->mAllowAddingApns:Z

    .line 254
    .end local v5    # "readOnlyApnTypes":[Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->mUserManager:Landroid/os/UserManager;

    .line 255
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .line 827
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 828
    new-instance v0, Lcom/android/settings/network/ApnSettings$2;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/ApnSettings$2;-><init>(Lcom/android/settings/network/ApnSettings;Landroid/content/Context;)V

    .line 833
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120ed6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 834
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 835
    return-object v0

    .line 837
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 652
    iget-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mUnavailable:Z

    if-nez v0, :cond_1

    .line 653
    iget-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mAllowAddingApns:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 654
    nop

    .line 655
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120943

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 654
    const/4 v2, 0x1

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f0801ca

    .line 656
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 657
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 659
    :cond_0
    const/4 v0, 0x2

    .line 660
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120949

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 659
    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    .line 661
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 664
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 665
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 318
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 320
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 323
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 669
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 678
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 675
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/network/ApnSettings;->restoreDefaultApn()Z

    .line 676
    return v1

    .line 671
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/network/ApnSettings;->addNewApn()V

    .line 672
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .line 300
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 302
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 303
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnSettings;->removeDialog(I)V

    .line 304
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 306
    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

    .line 309
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 310
    return-void

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 314
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 708
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 708
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 712
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 715
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 697
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 698
    .local v0, "pos":I
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 699
    .local v1, "url":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/network/ApnSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    .end local v0    # "pos":I
    .end local v1    # "url":Landroid/net/Uri;
    goto :goto_0

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 704
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .line 278
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 280
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 281
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnSettings;->removeDialog(I)V

    .line 282
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 284
    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

    .line 287
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 288
    return-void

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 293
    sget-boolean v0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_2

    .line 294
    invoke-direct {p0}, Lcom/android/settings/network/ApnSettings;->fillList()V

    .line 296
    :cond_2
    return-void
.end method
