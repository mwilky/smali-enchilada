.class public final enum Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;


# instance fields
.field public final alphaHint:I

.field public final alphaHintForFingerprint:I

.field public final alphaMessage:I

.field public final alphaMessageForFingerprint:I

.field public final buttonText:I

.field public final numericHint:I

.field public final numericHintForFingerprint:I

.field public final numericMessage:I

.field public final numericMessageForFingerprint:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 258
    new-instance v12, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const v3, 0x7f120892

    const v4, 0x7f12088c

    const v5, 0x7f120892

    const v6, 0x7f120890

    const v7, 0x7f12088d

    const v8, 0x7f120875

    const v9, 0x7f120891

    const v10, 0x7f120875

    const v11, 0x7f120984

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v12, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 269
    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v14, "NeedToConfirm"

    const/4 v15, 0x1

    const v16, 0x7f12089a

    const v17, 0x7f12089a

    const v18, 0x7f1208a4

    const v19, 0x7f1208a4

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v24, 0x7f120894

    move-object v13, v0

    invoke-direct/range {v13 .. v24}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 280
    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v2, "ConfirmWrong"

    const/4 v3, 0x2

    const v4, 0x7f120895

    const v5, 0x7f120895

    const v6, 0x7f120896

    const v7, 0x7f120896

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f120894

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 256
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIIII)V
    .locals 0
    .param p3, "hintInAlpha"    # I
    .param p4, "hintInAlphaForFingerprint"    # I
    .param p5, "hintInNumeric"    # I
    .param p6, "hintInNumericForFingerprint"    # I
    .param p7, "messageInAlpha"    # I
    .param p8, "messageInAlphaForFingerprint"    # I
    .param p9, "messageInNumeric"    # I
    .param p10, "messageInNumericForFingerprint"    # I
    .param p11, "nextButtonText"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIII)V"
        }
    .end annotation

    .line 295
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 296
    iput p3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    .line 297
    iput p4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForFingerprint:I

    .line 298
    iput p5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    .line 299
    iput p6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForFingerprint:I

    .line 300
    iput p7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaMessage:I

    .line 301
    iput p8, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaMessageForFingerprint:I

    .line 302
    iput p9, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericMessage:I

    .line 303
    iput p10, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericMessageForFingerprint:I

    .line 304
    iput p11, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    .line 305
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 256
    const-class v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1

    .line 256
    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method


# virtual methods
.method public getHint(ZZ)I
    .locals 1
    .param p1, "isAlpha"    # Z
    .param p2, "isFingerprint"    # Z
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .line 318
    if-eqz p1, :cond_1

    .line 319
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForFingerprint:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    :goto_0
    return v0

    .line 321
    :cond_1
    if-eqz p2, :cond_2

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForFingerprint:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    :goto_1
    return v0
.end method

.method public getMessage(ZZ)I
    .locals 1
    .param p1, "isAlpha"    # Z
    .param p2, "isFingerprint"    # Z
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .line 326
    if-eqz p1, :cond_1

    .line 327
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaMessageForFingerprint:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaMessage:I

    :goto_0
    return v0

    .line 329
    :cond_1
    if-eqz p2, :cond_2

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericMessageForFingerprint:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericMessage:I

    :goto_1
    return v0
.end method
