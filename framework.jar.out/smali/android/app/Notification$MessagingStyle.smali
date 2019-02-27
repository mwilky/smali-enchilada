.class public Landroid/app/Notification$MessagingStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessagingStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$MessagingStyle$Message;
    }
.end annotation


# static fields
.field public static final MAXIMUM_RETAINED_MESSAGES:I = 0x19


# instance fields
.field mConversationTitle:Ljava/lang/CharSequence;

.field mHistoricMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation
.end field

.field mIsGroupConversation:Z

.field mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation
.end field

.field mUser:Landroid/app/Person;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/app/Person;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    iput-object p1, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    return-void
.end method

.method private createConversationTitleFromMessages()Ljava/lang/CharSequence;
    .locals 6

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    nop

    :goto_1
    if-ge v1, v3, :cond_3

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method private findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-static {v0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage(Ljava/util/List;)Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    return-object v0
.end method

.method public static findLatestIncomingMessage(Ljava/util/List;)Landroid/app/Notification$MessagingStyle$Message;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;)",
            "Landroid/app/Notification$MessagingStyle$Message;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$MessagingStyle$Message;

    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->access$4300(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->access$4300(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$MessagingStyle$Message;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private fixTitleAndTextExtras(Landroid/os/Bundle;)V
    .locals 9

    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->access$4200(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->access$4300(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->access$4300(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->access$4300(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v1

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    :goto_2
    invoke-virtual {v1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_3
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->access$4100(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040424

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v3, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_4
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    goto :goto_4

    :cond_5
    move-object v3, v1

    :goto_4
    if-eqz v3, :cond_6

    const-string v4, "android.title"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_6
    if-eqz v2, :cond_7

    const-string v4, "android.text"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method private hasOnlyWhiteSpaceSenders()Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual {v2}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/app/Notification$MessagingStyle;->isWhiteSpace(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isWhiteSpace(Ljava/lang/CharSequence;)Z
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "^\\s*$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x200b

    if-eq v3, v4, :cond_2

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private static makeFontColorSpan(I)Landroid/text/style/TextAppearanceSpan;
    .locals 7

    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v6
.end method

.method private makeMessagingView(ZZ)Landroid/widget/RemoteViews;
    .locals 12

    invoke-static {p0}, Landroid/app/Notification$Style;->access$4000(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/app/Notification$Style;->access$4000(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    :goto_0
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->access$4100(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    const/4 v2, 0x0

    const/4 v5, 0x0

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    iget-object v7, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v7}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v7

    invoke-static {v7}, Landroid/app/Notification;->access$1100(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->hasOnlyWhiteSpaceSenders()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x1

    move-object v2, v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle;->isGroupConversation()Z

    move-result v6

    xor-int/2addr v6, v4

    :cond_3
    :goto_2
    new-instance v7, Landroid/app/Notification$TemplateBindResult;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification$1;)V

    iget-object v9, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v10, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v10}, Landroid/app/Notification$Builder;->access$4400(Landroid/app/Notification$Builder;)I

    move-result v10

    iget-object v11, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v11, v11, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v11}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/app/Notification$StandardTemplateParams;->hasProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/app/Notification$StandardTemplateParams;->title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v8

    if-nez p2, :cond_5

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    goto :goto_4

    :cond_5
    :goto_3
    move v3, v4

    :goto_4
    invoke-virtual {v8, v3}, Landroid/app/Notification$StandardTemplateParams;->hideLargeIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/Notification$StandardTemplateParams;->hideReplyIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Notification$StandardTemplateParams;->headerTextSecondary(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    invoke-static {v9, v10, v3, v7}, Landroid/app/Notification$Builder;->access$4500(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v4}, Landroid/app/Notification$MessagingStyle;->addExtras(Landroid/os/Bundle;)V

    const v4, 0x1020345

    invoke-virtual {v7}, Landroid/app/Notification$TemplateBindResult;->getIconMarginEnd()I

    move-result v8

    invoke-virtual {v3, v4, v8}, Landroid/widget/RemoteViews;->setViewLayoutMarginEnd(II)V

    const-string/jumbo v4, "setLayoutColor"

    iget-object v8, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8}, Landroid/app/Notification$Builder;->access$4600(Landroid/app/Notification$Builder;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v8

    goto :goto_5

    :cond_6
    iget-object v8, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v8

    :goto_5
    const v9, 0x1020426

    invoke-virtual {v3, v9, v4, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const-string/jumbo v4, "setSenderTextColor"

    iget-object v8, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v8

    invoke-virtual {v3, v9, v4, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const-string/jumbo v4, "setMessageTextColor"

    iget-object v8, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->getSecondaryTextColor()I

    move-result v8

    invoke-virtual {v3, v9, v4, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const-string/jumbo v4, "setDisplayImagesAtEnd"

    invoke-virtual {v3, v9, v4, p1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    const-string/jumbo v4, "setAvatarReplacement"

    invoke-virtual {v3, v9, v4, v5}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    const-string/jumbo v4, "setNameReplacement"

    invoke-virtual {v3, v9, v4, v2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v4, "setIsOneToOne"

    invoke-virtual {v3, v9, v4, v6}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    const-string/jumbo v4, "setData"

    iget-object v8, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v8

    iget-object v8, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v3, v9, v4, v8}, Landroid/widget/RemoteViews;->setBundle(ILjava/lang/String;Landroid/os/Bundle;)V

    return-object v3
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    if-eqz v0, :cond_0

    const-string v0, "android.selfDisplayName"

    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    invoke-virtual {v1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "android.messagingUser"

    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    const-string v0, "android.conversationTitle"

    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.messages"

    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_2
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.messages.historic"

    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_3
    invoke-direct {p0, p1}, Landroid/app/Notification$MessagingStyle;->fixTitleAndTextExtras(Landroid/os/Bundle;)V

    const-string v0, "android.isGroupConversation"

    iget-boolean v1, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public addHistoricMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public addMessage(Ljava/lang/CharSequence;JLandroid/app/Person;)Landroid/app/Notification$MessagingStyle;
    .locals 1

    new-instance v0, Landroid/app/Notification$MessagingStyle$Message;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;)V

    invoke-virtual {p0, v0}, Landroid/app/Notification$MessagingStyle;->addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    move-result-object v0

    return-object v0
.end method

.method public addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;
    .locals 1

    nop

    if-nez p4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v0, p4}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLandroid/app/Person;)Landroid/app/Notification$MessagingStyle;

    move-result-object v0

    return-object v0
.end method

.method public areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .locals 14

    const/4 v0, 0x1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v3

    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_3

    return v0

    :cond_3
    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_c

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Notification$MessagingStyle$Message;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Notification$MessagingStyle$Message;

    nop

    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    return v0

    :cond_4
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    return v0

    :cond_5
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v9

    if-nez v9, :cond_6

    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_1

    :cond_6
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    :goto_1
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v10

    if-nez v10, :cond_7

    invoke-virtual {v8}, Landroid/app/Notification$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v10

    goto :goto_2

    :cond_7
    invoke-virtual {v8}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v10

    :goto_2
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    return v0

    :cond_8
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v11

    const/4 v12, 0x0

    if-nez v11, :cond_9

    move-object v11, v12

    goto :goto_3

    :cond_9
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v11

    :goto_3
    invoke-virtual {v8}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v13

    if-nez v13, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v8}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v12

    :goto_4
    invoke-static {v11, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    return v0

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_c
    return v5

    :cond_d
    :goto_5
    return v0
.end method

.method public getConversationTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeadsUpStatusBarText()Ljava/lang/CharSequence;
    .locals 2

    invoke-static {p0}, Landroid/app/Notification$Style;->access$4000(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/app/Notification$Style;->access$4000(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->hasOnlyWhiteSpaceSenders()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getHistoricMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    return-object v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    return-object v0
.end method

.method public getUser()Landroid/app/Person;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    return-object v0
.end method

.method public getUserDisplayName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isGroupConversation()Z
    .locals 2

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$4100(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    return v0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/app/Notification$MessagingStyle;->makeMessagingView(ZZ)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makeContentView(Z)Landroid/widget/RemoteViews;
    .locals 3

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->access$3700(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->access$3602(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->access$3702(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/app/Notification$MessagingStyle;->makeMessagingView(ZZ)Landroid/widget/RemoteViews;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->access$3600(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/app/Notification$Builder;->access$3702(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/app/Notification$Builder;->access$3602(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    return-object v0
.end method

.method public makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Landroid/app/Notification$MessagingStyle;->makeMessagingView(ZZ)Landroid/widget/RemoteViews;

    move-result-object v1

    const-string/jumbo v2, "setMaxDisplayedLines"

    const v3, 0x1020345

    invoke-virtual {v1, v3, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-object v1
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    const-string v0, "android.messagingUser"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/Person;

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    if-nez v0, :cond_0

    const-string v0, "android.selfDisplayName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Landroid/app/Person$Builder;

    invoke-direct {v1}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    :cond_0
    const-string v0, "android.conversationTitle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    const-string v0, "android.messages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    const-string v1, "android.messages.historic"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    const-string v2, "android.isGroupConversation"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    return-void
.end method

.method public setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setGroupConversation(Z)Landroid/app/Notification$MessagingStyle;
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    return-object p0
.end method

.method public validate(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Notification$Style;->validate(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "User must be valid and have a name."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
