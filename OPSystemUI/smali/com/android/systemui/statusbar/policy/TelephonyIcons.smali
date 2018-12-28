.class Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DEBUG:Z

.field static final E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING:[I

.field static final ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING_FIVE_BAR:[I

.field static final ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING_FOUR_BAR:[I

.field static final ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL:[I

.field static final ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL_FIVE_BAR:[I

.field static final ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL_FOUR_BAR:[I

.field static final ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final SIGNAL_LEVEL_NUM:I

.field static final STACKED_STRENGTH_ICONS:[I

.field static final STACKED_STRENGTH_ICONS_FIVE_BAR:[I

.field static final STACKED_STRENGTH_ICONS_FOUR_BAR:[I

.field static final TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_FIVE_BAR:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_FOUR_BAR:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_ROAMING_R:[[I

.field static final THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field private static isInitiated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 31

    const/4 v0, 0x2

    new-array v1, v0, [[I

    const/4 v2, 0x5

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOUR_BAR:[[I

    new-array v1, v0, [[I

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    aput-object v3, v1, v5

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_R:[[I

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL_FOUR_BAR:[I

    new-array v1, v2, [I

    fill-array-data v1, :array_5

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING_FOUR_BAR:[I

    new-array v1, v2, [I

    fill-array-data v1, :array_6

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_STRENGTH_ICONS_FOUR_BAR:[I

    new-array v0, v0, [[I

    const/4 v1, 0x6

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FIVE_BAR:[[I

    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL_FIVE_BAR:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING_FIVE_BAR:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_STRENGTH_ICONS_FIVE_BAR:[I

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportFiveBar()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FIVE_BAR:[[I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOUR_BAR:[[I

    :goto_0
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportFiveBar()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL_FIVE_BAR:[I

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL_FOUR_BAR:[I

    :goto_1
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL:[I

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportFiveBar()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING_FIVE_BAR:[I

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING_FOUR_BAR:[I

    :goto_2
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING:[I

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportFiveBar()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_STRENGTH_ICONS_FIVE_BAR:[I

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_STRENGTH_ICONS_FOUR_BAR:[I

    :goto_3
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_STRENGTH_ICONS:[I

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "CARRIER_NETWORK_CHANGE"

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f1101cb

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v17}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v19, "2G"

    const/16 v20, 0x0

    const/16 v21, 0x0

    sget-object v22, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v27, v1, v4

    const v28, 0x7f110201

    const v29, 0x7f0805e3

    const/16 v30, 0x1

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v30}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "3G"

    sget-object v9, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f110204

    const v16, 0x7f0805e4

    const/16 v17, 0x1

    move-object v5, v0

    invoke-direct/range {v5 .. v17}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v19, "3G+"

    sget-object v22, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v27, v1, v4

    const v28, 0x7f110202

    const v29, 0x7f0805e5

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v30}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "WFC"

    sget-object v9, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v17}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v19, "Unknown"

    sget-object v22, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v27, v1, v4

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v30}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "E"

    sget-object v9, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f110208

    const v16, 0x7f0805ea

    move-object v5, v0

    invoke-direct/range {v5 .. v17}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v19, "1X"

    sget-object v22, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v27, v1, v4

    const v28, 0x7f110207

    const v29, 0x7f0805e2

    const/16 v30, 0x1

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v30}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "G"

    sget-object v9, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f110209

    const v16, 0x7f0805eb

    move-object v5, v0

    invoke-direct/range {v5 .. v17}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v19, "H"

    sget-object v22, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v27, v1, v4

    const v28, 0x7f110202

    const v29, 0x7f0805ec

    const/16 v30, 0x0

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v30}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "H+"

    sget-object v9, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f110203

    const v16, 0x7f0805ed

    move-object v5, v0

    invoke-direct/range {v5 .. v17}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v19, "4G"

    sget-object v22, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v27, v1, v4

    const v28, 0x7f110205

    const v29, 0x7f0805e6

    const/16 v30, 0x1

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v30}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "4G+"

    sget-object v9, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f110206

    const v16, 0x7f0805e8

    const/16 v17, 0x1

    move-object v5, v0

    invoke-direct/range {v5 .. v17}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v19, "LTE"

    sget-object v22, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v27, v1, v4

    const v28, 0x7f11020b

    const v29, 0x7f0805ef

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v30}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "LTE+"

    sget-object v9, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f11020c

    const v16, 0x7f0805f0

    move-object v5, v0

    invoke-direct/range {v5 .. v17}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v19, "LTE"

    sget-object v22, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v27, v1, v4

    const v29, 0x7f0805e7

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v30}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "DataDisabled"

    sget-object v9, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f1101cf

    const v16, 0x7f0805e1

    const/16 v17, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v17}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget v0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->SIGNAL_LEVEL_NUM:I

    const-string v0, "TelephonyIcons"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DEBUG:Z

    sput-boolean v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->isInitiated:Z

    return-void

    :array_0
    .array-data 4
        0x7f080692
        0x7f0806e2
        0x7f080736
        0x7f08078a
        0x7f0807de
    .end array-data

    :array_1
    .array-data 4
        0x7f0806b5
        0x7f080705
        0x7f080759
        0x7f0807ad
        0x7f080801
    .end array-data

    :array_2
    .array-data 4
        0x7f0806b0
        0x7f080700
        0x7f080754
        0x7f0807a8
        0x7f0807fc
    .end array-data

    :array_3
    .array-data 4
        0x7f0806af
        0x7f0806ff
        0x7f080753
        0x7f0807a7
        0x7f0807fb
    .end array-data

    :array_4
    .array-data 4
        0x7f0806c9
        0x7f080719
        0x7f08076d
        0x7f0807c1
        0x7f080815
    .end array-data

    :array_5
    .array-data 4
        0x7f080852
        0x7f080853
        0x7f080854
        0x7f080855
        0x7f080856
    .end array-data

    :array_6
    .array-data 4
        0x7f0806c8
        0x7f080718
        0x7f08076c
        0x7f0807c0
        0x7f080814
    .end array-data

    :array_7
    .array-data 4
        0x7f0806ca
        0x7f08071a
        0x7f08076e
        0x7f0807c2
        0x7f080816
        0x7f080836
    .end array-data

    :array_8
    .array-data 4
        0x7f0806cb
        0x7f08071b
        0x7f08076f
        0x7f0807c3
        0x7f080817
        0x7f080837
    .end array-data

    :array_9
    .array-data 4
        0x7f0806ce
        0x7f08071e
        0x7f080772
        0x7f0807c6
        0x7f08081a
        0x7f08083a
    .end array-data

    :array_a
    .array-data 4
        0x7f0806cc
        0x7f08071c
        0x7f080770
        0x7f0807c4
        0x7f080818
        0x7f080838
    .end array-data

    :array_b
    .array-data 4
        0x7f0806cd
        0x7f08071d
        0x7f080771
        0x7f0807c5
        0x7f080819
        0x7f080839
    .end array-data
.end method

.method static getOneplusRoamingSignalIconId(I)I
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING:[I

    aget v1, v0, p0

    return v1
.end method

.method static getOneplusVirtualSimSignalIconId(I)I
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL:[I

    aget v1, v0, p0

    return v1
.end method

.method static getStackedDataIcon(IIZ)[I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_STRENGTH_ICONS:[I

    const/4 v3, 0x2

    new-array v3, v3, [I

    aget v0, v2, p1

    const/16 v4, 0x11

    if-eq p0, v4, :cond_3

    const/16 v4, 0x13

    if-eq p0, v4, :cond_1

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const v1, 0x7f08060b

    const-string v4, "TelephonyIcons"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknow network type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_0
    if-eqz p2, :cond_0

    const v4, 0x7f08060c

    goto :goto_0

    :cond_0
    const v4, 0x7f080609

    :goto_0
    move v1, v4

    goto :goto_2

    :pswitch_1
    const v1, 0x7f080607

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    const v4, 0x7f08060d

    goto :goto_1

    :cond_2
    const v4, 0x7f08060a

    :goto_1
    move v1, v4

    goto :goto_2

    :cond_3
    :pswitch_2
    const v1, 0x7f080608

    nop

    :goto_2
    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    return-object v3

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static getStackedVoiceIcon(IIZZ)[I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_STRENGTH_ICONS:[I

    const/4 v3, 0x2

    new-array v3, v3, [I

    aget v0, v2, p1

    if-eqz p2, :cond_0

    const v1, 0x7f08060e

    goto :goto_1

    :cond_0
    const/4 v4, 0x7

    if-eq p0, v4, :cond_3

    const/16 v4, 0xd

    if-eq p0, v4, :cond_1

    const v1, 0x7f080606

    const-string v4, "TelephonyIcons"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknow network type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    const v4, 0x7f08060c

    goto :goto_0

    :cond_2
    const v4, 0x7f080609

    :goto_0
    move v1, v4

    goto :goto_1

    :cond_3
    const v1, 0x7f080606

    nop

    :goto_1
    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    return-object v3
.end method
