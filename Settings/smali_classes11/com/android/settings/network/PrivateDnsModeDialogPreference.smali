.class public Lcom/android/settings/network/PrivateDnsModeDialogPreference;
.super Lcom/android/settingslib/CustomDialogPreference;
.source "PrivateDnsModeDialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final ADDRESS_FAMILIES:[I

.field public static final ANNOTATION_URL:Ljava/lang/String; = "url"

.field static final HOSTNAME_KEY:Ljava/lang/String; = "private_dns_specifier"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MODE_KEY:Ljava/lang/String; = "private_dns_mode"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final PRIVATE_DNS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PrivateDnsModeDialog"


# instance fields
.field mEditText:Landroid/widget/EditText;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mMode:Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mRadioGroup:Landroid/widget/RadioGroup;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mUrlLinkInfo:Lcom/android/settings/utils/AnnotationSpan$LinkInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    sget-object v0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    const-string v1, "off"

    const v2, 0x7f0a0407

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    const-string v1, "opportunistic"

    const v2, 0x7f0a0408

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    const-string v1, "hostname"

    const v2, 0x7f0a0409

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Landroid/system/OsConstants;->AF_INET:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->ADDRESS_FAMILIES:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v1, "url"

    sget-object v2, Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;->INSTANCE:Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mUrlLinkInfo:Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v1, "url"

    sget-object v2, Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;->INSTANCE:Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mUrlLinkInfo:Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v1, "url"

    sget-object v2, Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;->INSTANCE:Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mUrlLinkInfo:Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v1, "url"

    sget-object v2, Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;->INSTANCE:Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mUrlLinkInfo:Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    return-void
.end method

.method public static getHostnameFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1

    const-string v0, "private_dns_specifier"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getModeFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2

    const-string v0, "private_dns_mode"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "private_dns_default_mode"

    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    const-string v1, "opportunistic"

    :goto_0
    return-object v1
.end method

.method private getSaveButton()Landroid/widget/Button;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    return-object v1
.end method

.method private isWeaklyValidatedHostname(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "^[a-zA-Z0-9_.-]+$"

    const-string v1, "^[a-zA-Z0-9_.-]+$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    sget-object v1, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->ADDRESS_FAMILIES:[I

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v1, v4

    invoke-static {v5, p1}, Landroid/system/Os;->inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    if-eqz v6, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method static synthetic lambda$new$0(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    const v1, 0x7f1206fa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "PrivateDnsModeDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity was not found for intent, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private updateDialogInfo()V
    .locals 3

    const-string v0, "hostname"

    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getSaveButton()Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->isWeaklyValidatedHostname(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->updateDialogInfo()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getModeFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    const v2, 0x7f0a040a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getHostnameFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a040b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mRadioGroup:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mRadioGroup:Landroid/widget/RadioGroup;

    sget-object v3, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    const v5, 0x7f0a0408

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    const v2, 0x7f0a0406

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    nop

    const v3, 0x7f1206fa

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    new-instance v4, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v5, "url"

    invoke-direct {v4, v0, v5, v3}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v4}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->isActionable()Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f120e27

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/android/settings/utils/AnnotationSpan;->linkify(Ljava/lang/CharSequence;[Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "hostname"

    iput-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string v0, "opportunistic"

    iput-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    nop

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->updateDialogInfo()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0407
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    const-string v2, "hostname"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "private_dns_specifier"

    iget-object v3, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    const/16 v2, 0x4e1

    iget-object v3, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/util/Pair;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "private_dns_mode"

    iget-object v3, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
