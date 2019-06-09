.class public Lcom/oneplus/settings/OPSecurityDetectionActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPSecurityDetectionActivity.java"


# static fields
.field private static final KEY_SECURITY_DETECTION_TYPE:I = 0xb

.field static final LEGAL_OPPO_URL:Ljava/lang/String; = "https://www.oppo.com/cn/service/help/640?id=640&name=%E6%9C%8D%E5%8A%A1%E6%94%BF%E7%AD%96&hdscreen=1"

.field static final LEGAL_TENCENT_URL:Ljava/lang/String; = "http://www.qq.com/privacy.htm"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPSecurityDetectionActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPSecurityDetectionActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/oneplus/settings/OPSecurityDetectionActivity;->mContext:Landroid/content/Context;

    const v0, 0x7f0d0029

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPSecurityDetectionActivity;->setContentView(I)V

    const v0, 0x7f0a0576

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPSecurityDetectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a03ed

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPSecurityDetectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f120d67

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/OPSecurityDetectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://www.qq.com/privacy.htm"

    const v4, 0x7f120d68

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/OPSecurityDetectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/settings/utils/OPUtils;->parseLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v5, 0x7f120d65

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPSecurityDetectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "https://www.oppo.com/cn/service/help/640?id=640&name=%E6%9C%8D%E5%8A%A1%E6%94%BF%E7%AD%96&hdscreen=1"

    const v7, 0x7f120d66

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/OPSecurityDetectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    new-instance v9, Lcom/oneplus/settings/OPSecurityDetectionActivity$1;

    invoke-direct {v9, p0}, Lcom/oneplus/settings/OPSecurityDetectionActivity$1;-><init>(Lcom/oneplus/settings/OPSecurityDetectionActivity;)V

    invoke-static {v5, v7, v8, v9}, Lcom/oneplus/settings/utils/OPUtils;->parseLinkLaunchAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/style/ClickableSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
