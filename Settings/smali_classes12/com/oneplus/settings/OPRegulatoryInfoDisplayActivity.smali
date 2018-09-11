.class public Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;
.super Landroid/app/Activity;
.source "OPRegulatoryInfoDisplayActivity.java"


# static fields
.field private static final ONEPLUS_A5000:Ljava/lang/String; = "ONEPLUS A5000"

.field private static final ONEPLUS_A5010:Ljava/lang/String; = "ONEPLUS A5010"

.field private static final ONEPLUS_A6000:Ljava/lang/String; = "ONEPLUS A6000"

.field private static final ONEPLUS_A6003:Ljava/lang/String; = "ONEPLUS A6003"


# instance fields
.field private mRegulatoryInfoImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 25
    invoke-virtual {p0}, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f120eb5

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 26
    const v0, 0x7f0d01a0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->setContentView(I)V

    .line 27
    const v0, 0x7f0a043d

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoImage:Landroid/widget/ImageView;

    .line 28
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A5000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoImage:Landroid/widget/ImageView;

    const v1, 0x7f0803e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 30
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A5010"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoImage:Landroid/widget/ImageView;

    const v1, 0x7f0803e8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 32
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoImage:Landroid/widget/ImageView;

    const v1, 0x7f0803e9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 34
    :cond_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoImage:Landroid/widget/ImageView;

    const v1, 0x7f0803ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 36
    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const v1, 0x7f120b89

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 37
    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoImage:Landroid/widget/ImageView;

    const v1, 0x7f0803eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 38
    :cond_4
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const v1, 0x7f120b8a

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 39
    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoImage:Landroid/widget/ImageView;

    const v1, 0x7f0803ec

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 41
    :cond_5
    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoImage:Landroid/widget/ImageView;

    const v1, 0x7f0803ed

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 44
    invoke-virtual {p0}, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 47
    :cond_6
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 52
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->finish()V

    .line 54
    const/4 v0, 0x1

    return v0

    .line 56
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
