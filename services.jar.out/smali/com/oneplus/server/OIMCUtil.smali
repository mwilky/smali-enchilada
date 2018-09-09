.class public Lcom/oneplus/server/OIMCUtil;
.super Ljava/lang/Object;
.source "OIMCUtil.java"


# static fields
.field static final DEBUG:Z

.field private static final HAS_HW_KEYS:Z

.field static final TAG:Ljava/lang/String; = "OIMC"

.field private static sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

.field private static sOemSceneAutoBrightnessController:Lcom/android/server/OemSceneAutoBrightnessController;

.field private static sOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

.field private static sOemSceneModeUtils:Lcom/oneplus/util/OemSceneModeUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    .line 36
    const-string v0, "1"

    const-string/jumbo v1, "qemu.hw.mainkeys"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/server/OIMCUtil;->HAS_HW_KEYS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustOIMCRulesForSwitch(Lcom/oneplus/server/OIMCService;I)V
    .locals 4
    .param p0, "service"    # Lcom/oneplus/server/OIMCService;
    .param p1, "userId"    # I

    .line 212
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OemSceneAnswerWithoutUIController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneAnswerWithoutUIController;

    move-result-object v0

    sput-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    .line 213
    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneAnswerWithoutUIController;->registerAnswerWithoutUIContentObServer()V

    .line 215
    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    invoke-virtual {v0, p1}, Lcom/android/server/OemSceneAnswerWithoutUIController;->addOrRemoveRule(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_0
    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OIMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerOIMCRules error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .line 53
    const-string v0, "OIMC"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 57
    const-string v0, "OIMC"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    return-void
.end method

.method public static registerOIMCFunctions(Lcom/oneplus/server/OIMCService;)V
    .locals 4
    .param p0, "service"    # Lcom/oneplus/server/OIMCService;

    .line 78
    :try_start_0
    new-instance v0, Lcom/oneplus/server/ColorManager;

    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/server/ColorManager;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, "mColorManager":Lcom/oneplus/server/ColorManager;
    const-string v1, "GrayColor"

    iget-object v2, v0, Lcom/oneplus/server/ColorManager;->mGrayColor:Lcom/oneplus/server/ColorManager$GrayColor;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    .line 80
    const-string v1, "ColorBalance"

    iget-object v2, v0, Lcom/oneplus/server/ColorManager;->mColorBalance:Lcom/oneplus/server/ColorManager$ColorBalance;

    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    .line 81
    const-string v1, "ColorDisable"

    iget-object v2, v0, Lcom/oneplus/server/ColorManager;->mColorDisable:Lcom/oneplus/server/ColorManager$ColorDisable;

    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    .line 85
    const-string v1, "HeadsUpNotification"

    const-string/jumbo v2, "op_oimc_func_disable_headsup"

    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILjava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/util/OemSceneModeUtils;->getInstance(Landroid/content/Context;)Lcom/oneplus/util/OemSceneModeUtils;

    move-result-object v1

    sput-object v1, Lcom/oneplus/server/OIMCUtil;->sOemSceneModeUtils:Lcom/oneplus/util/OemSceneModeUtils;

    .line 99
    sget-object v1, Lcom/oneplus/server/OIMCUtil;->sOemSceneModeUtils:Lcom/oneplus/util/OemSceneModeUtils;

    if-eqz v1, :cond_0

    .line 100
    const-string v1, "NotifyFor3PtyCallsBlocking"

    sget-object v2, Lcom/oneplus/server/OIMCUtil;->sOemSceneModeUtils:Lcom/oneplus/util/OemSceneModeUtils;

    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OemSceneAutoBrightnessController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneAutoBrightnessController;

    move-result-object v1

    sput-object v1, Lcom/oneplus/server/OIMCUtil;->sOemSceneAutoBrightnessController:Lcom/android/server/OemSceneAutoBrightnessController;

    .line 108
    sget-object v1, Lcom/oneplus/server/OIMCUtil;->sOemSceneAutoBrightnessController:Lcom/android/server/OemSceneAutoBrightnessController;

    if-eqz v1, :cond_1

    .line 109
    const-string v1, "TurnOffAutoBacklight"

    sget-object v2, Lcom/oneplus/server/OIMCUtil;->sOemSceneAutoBrightnessController:Lcom/android/server/OemSceneAutoBrightnessController;

    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    .line 116
    :cond_1
    sget-boolean v1, Lcom/oneplus/server/OIMCUtil;->HAS_HW_KEYS:Z

    if-eqz v1, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OemSceneButtonController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneButtonController;

    move-result-object v1

    sput-object v1, Lcom/oneplus/server/OIMCUtil;->sOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    .line 118
    sget-object v1, Lcom/oneplus/server/OIMCUtil;->sOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    if-eqz v1, :cond_2

    .line 119
    const-string v1, "KeyBlocking"

    sget-object v2, Lcom/oneplus/server/OIMCUtil;->sOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    .line 126
    :cond_2
    const-string v1, "AnswerWithoutUI"

    const-string/jumbo v2, "op_oimc_func_answer_without_ui"

    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILjava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OemSceneAnswerWithoutUIController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneAnswerWithoutUIController;

    move-result-object v1

    sput-object v1, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    .line 129
    sget-object v1, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    invoke-virtual {v1}, Lcom/android/server/OemSceneAnswerWithoutUIController;->registerAnswerWithoutUIContentObServer()V

    .line 142
    const-string v1, "FingerprintGestureLimit"

    .line 143
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/server/FingerprintGestureLimit;->getInstance(Landroid/content/Context;)Lcom/oneplus/server/FingerprintGestureLimit;

    move-result-object v2

    .line 142
    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    .line 146
    invoke-static {}, Lcom/android/server/am/OnePlusRamBoostManager;->getInstance()Lcom/android/server/am/OnePlusRamBoostManager;

    move-result-object v1

    .line 147
    .local v1, "mOnePlusRamBoostManager":Lcom/android/server/am/OnePlusRamBoostManager;
    if-eqz v1, :cond_3

    .line 148
    const-string v2, "OnePlusRamboost"

    invoke-virtual {p0, v2, v3, v1}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v0    # "mColorManager":Lcom/oneplus/server/ColorManager;
    .end local v1    # "mOnePlusRamBoostManager":Lcom/android/server/am/OnePlusRamBoostManager;
    :cond_3
    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OIMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerOIMCFunctions error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static registerOIMCRulesForBoot(Lcom/oneplus/server/OIMCService;)V
    .locals 4
    .param p0, "service"    # Lcom/oneplus/server/OIMCService;

    .line 161
    :try_start_0
    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAutoBrightnessController:Lcom/android/server/OemSceneAutoBrightnessController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAutoBrightnessController:Lcom/android/server/OemSceneAutoBrightnessController;

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneAutoBrightnessController;->updateFunctionRule(I)V

    .line 165
    :cond_0
    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    if-eqz v0, :cond_1

    .line 166
    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneButtonController;->updateFunctionRule(I)V

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OemSceneAnswerWithoutUIController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneAnswerWithoutUIController;

    move-result-object v0

    sput-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    .line 170
    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    if-eqz v0, :cond_2

    .line 171
    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneAnswerWithoutUIController;->registerAnswerWithoutUIContentObServer()V

    .line 172
    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneAnswerWithoutUIController;->addOrRemoveRule(I)V

    .line 183
    :cond_2
    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_NightMode_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 184
    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_ReadMode_GrayColor:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 185
    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_ReadMode_Disable_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 186
    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_FingerPrintMode_Disable_GrayColor:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 187
    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_FingerPrintMode_Disable_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 188
    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_FingerPrintMode_ColorDisable:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 192
    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_FingerprintGesture:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 196
    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_NotifyFor3PtyCallsBlocking:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OIMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerOIMCRules error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static toFuncAction(Ljava/lang/String;)I
    .locals 5
    .param p0, "action"    # Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x50c07cbe

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0xddf

    if-eq v0, v1, :cond_1

    const v1, 0x1ad6f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "config"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v4

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 69
    return v4

    .line 67
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 65
    :pswitch_1
    return v2

    .line 63
    :pswitch_2
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
