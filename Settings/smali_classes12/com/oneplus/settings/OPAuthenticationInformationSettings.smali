.class public Lcom/oneplus/settings/OPAuthenticationInformationSettings;
.super Landroid/app/Activity;
.source "OPAuthenticationInformationSettings.java"


# static fields
.field private static final ONEPLUS_A3000:Ljava/lang/String; = "oneplus A3000"

.field private static final ONEPLUS_A3000_CMIITID:Ljava/lang/String; = "2016CP1331"

.field private static final ONEPLUS_A3010:Ljava/lang/String; = "oneplus A3010"

.field private static final ONEPLUS_A3010_CMIITID:Ljava/lang/String; = "2016CP5088"

.field private static final ONEPLUS_A5000:Ljava/lang/String; = "ONEPLUS A5000"

.field private static final ONEPLUS_A5000_CMITTID:Ljava/lang/String; = "2017CP2198"

.field private static final ONEPLUS_A5010:Ljava/lang/String; = "ONEPLUS A5010"

.field private static final ONEPLUS_A5010_CMITTID:Ljava/lang/String; = "2017CP6039"

.field private static final ONEPLUS_A6000:Ljava/lang/String; = "ONEPLUS A6000"

.field private static final ONEPLUS_A6000_CMITTID:Ljava/lang/String; = "2018CP1307"

.field private static final ONEPLUS_XXXXXXXX_CMITTID:Ljava/lang/String; = "XXXXXXXXXX"


# instance fields
.field private mAuthenticationImage:Landroid/widget/ImageView;

.field private mCmiitIdView:Landroid/widget/TextView;

.field private mModelTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setCmiitID()V
    .locals 6

    .line 55
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120a6d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "cmiitid":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "oneplus A3000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "2016CP1331"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 58
    :cond_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "oneplus A3010"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "2016CP5088"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 60
    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "ONEPLUS A5000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "2017CP2198"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 62
    :cond_2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "ONEPLUS A5010"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "2017CP6039"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 64
    :cond_3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "ONEPLUS A6000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const v4, 0x7f080304

    if-eqz v1, :cond_4

    .line 65
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mAuthenticationImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "2018CP1307"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 67
    :cond_4
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const v5, 0x7f120b8d

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const v5, 0x7f120b8e

    .line 68
    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 72
    :cond_5
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "XXXXXXXXXX"

    aput-object v5, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mAuthenticationImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 69
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    const v5, 0x7f120a9f

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mAuthenticationImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    :goto_1
    return-void
.end method

.method private setDeviceType()V
    .locals 5

    .line 49
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120a70

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "deviceModel":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mModelTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 35
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f120a6b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 36
    const v0, 0x7f0d0142

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->setContentView(I)V

    .line 37
    const v0, 0x7f0a007e

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mModelTextView:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f0a007a

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0a007c

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mAuthenticationImage:Landroid/widget/ImageView;

    .line 40
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->setDeviceType()V

    .line 45
    invoke-direct {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->setCmiitID()V

    .line 46
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->finish()V

    .line 82
    const/4 v0, 0x1

    return v0

    .line 84
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
