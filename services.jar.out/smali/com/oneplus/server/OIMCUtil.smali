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

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustOIMCRulesForSwitch(Lcom/oneplus/server/OIMCService;I)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OemSceneAnswerWithoutUIController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneAnswerWithoutUIController;

    move-result-object v0

    sput-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneAnswerWithoutUIController;->registerAnswerWithoutUIContentObServer()V

    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    invoke-virtual {v0, p1}, Lcom/android/server/OemSceneAnswerWithoutUIController;->addOrRemoveRule(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OIMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerOIMCRules error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "OIMC"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "OIMC"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static registerOIMCFunctions(Lcom/oneplus/server/OIMCService;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/oneplus/server/ColorManager;

    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/server/ColorManager;-><init>(Landroid/content/Context;)V

    const-string v1, "GrayColor"

    iget-object v2, v0, Lcom/oneplus/server/ColorManager;->mGrayColor:Lcom/oneplus/server/ColorManager$GrayColor;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    const-string v1, "ColorBalance"

    iget-object v2, v0, Lcom/oneplus/server/ColorManager;->mColorBalance:Lcom/oneplus/server/ColorManager$ColorBalance;

    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    const-string v1, "ColorDisable"

    iget-object v2, v0, Lcom/oneplus/server/ColorManager;->mColorDisable:Lcom/oneplus/server/ColorManager$ColorDisable;

    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    const-string v1, "HeadsUpNotification"

    const-string/jumbo v2, "op_oimc_func_disable_headsup"

    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/util/OemSceneModeUtils;->getInstance(Landroid/content/Context;)Lcom/oneplus/util/OemSceneModeUtils;

    move-result-object v1

    sput-object v1, Lcom/oneplus/server/OIMCUtil;->sOemSceneModeUtils:Lcom/oneplus/util/OemSceneModeUtils;

    sget-object v1, Lcom/oneplus/server/OIMCUtil;->sOemSceneModeUtils:Lcom/oneplus/util/OemSceneModeUtils;

    if-eqz v1, :cond_0

    const-string v1, "NotifyFor3PtyCallsBlocking"

    sget-object v2, Lcom/oneplus/server/OIMCUtil;->sOemSceneModeUtils:Lcom/oneplus/util/OemSceneModeUtils;

    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OemSceneAutoBrightnessController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneAutoBrightnessController;

    move-result-object v1

    sput-object v1, Lcom/oneplus/server/OIMCUtil;->sOemSceneAutoBrightnessController:Lcom/android/server/OemSceneAutoBrightnessController;

    sget-object v1, Lcom/oneplus/server/OIMCUtil;->sOemSceneAutoBrightnessController:Lcom/android/server/OemSceneAutoBrightnessController;

    if-eqz v1, :cond_1

    const-string v1, "TurnOffAutoBacklight"

    sget-object v2, Lcom/oneplus/server/OIMCUtil;->sOemSceneAutoBrightnessController:Lcom/android/server/OemSceneAutoBrightnessController;

    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    :cond_1
    sget-boolean v1, Lcom/oneplus/server/OIMCUtil;->HAS_HW_KEYS:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OemSceneButtonController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneButtonController;

    move-result-object v1

    sput-object v1, Lcom/oneplus/server/OIMCUtil;->sOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    sget-object v1, Lcom/oneplus/server/OIMCUtil;->sOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    if-eqz v1, :cond_2

    const-string v1, "KeyBlocking"

    sget-object v2, Lcom/oneplus/server/OIMCUtil;->sOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    :cond_2
    const-string v1, "AnswerWithoutUI"

    const-string/jumbo v2, "op_oimc_func_answer_without_ui"

    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OemSceneAnswerWithoutUIController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneAnswerWithoutUIController;

    move-result-object v1

    sput-object v1, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    sget-object v1, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    invoke-virtual {v1}, Lcom/android/server/OemSceneAnswerWithoutUIController;->registerAnswerWithoutUIContentObServer()V

    const-string v1, "FingerprintGestureLimit"

    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/server/FingerprintGestureLimit;->getInstance(Landroid/content/Context;)Lcom/oneplus/server/FingerprintGestureLimit;

    move-result-object v2

    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    invoke-static {}, Lcom/android/server/am/OnePlusRamBoostManager;->getInstance()Lcom/android/server/am/OnePlusRamBoostManager;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "OnePlusRamboost"

    invoke-virtual {p0, v2, v3, v1}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OIMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerOIMCFunctions error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static registerOIMCRulesForBoot(Lcom/oneplus/server/OIMCService;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAutoBrightnessController:Lcom/android/server/OemSceneAutoBrightnessController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAutoBrightnessController:Lcom/android/server/OemSceneAutoBrightnessController;

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneAutoBrightnessController;->updateFunctionRule(I)V

    :cond_0
    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneButtonController;->updateFunctionRule(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OemSceneAnswerWithoutUIController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneAnswerWithoutUIController;

    move-result-object v0

    sput-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneAnswerWithoutUIController;->registerAnswerWithoutUIContentObServer()V

    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneAnswerWithoutUIController;->addOrRemoveRule(I)V

    :cond_2
    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_NightMode_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_ReadMode_GrayColor:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_ReadMode_Disable_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_FingerPrintMode_Disable_GrayColor:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_FingerPrintMode_Disable_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_FingerPrintMode_ColorDisable:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_FingerprintGesture:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_NotifyFor3PtyCallsBlocking:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OIMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerOIMCRules error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static toFuncAction(Ljava/lang/String;)I
    .locals 5

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

    return v4

    :pswitch_0
    const/4 v0, 0x3

    return v0

    :pswitch_1
    return v2

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
