.class public Lcom/oneplus/settings/OPFontStyleSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPFontStyleSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final OP_THEME_PACKAGE:Ljava/lang/String; = "com.oneplus.skin"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mSlateFont:Landroid/view/View;

.field private mSlateFontButton:Landroid/widget/RadioButton;

.field private mSystemFont:Landroid/view/View;

.field private mSystemFontButton:Landroid/widget/RadioButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 122
    new-instance v0, Lcom/oneplus/settings/OPFontStyleSettings$2;

    invoke-direct {v0}, Lcom/oneplus/settings/OPFontStyleSettings$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPFontStyleSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPFontStyleSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPFontStyleSettings;

    .line 27
    invoke-virtual {p0}, Lcom/oneplus/settings/OPFontStyleSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPFontStyleSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPFontStyleSettings;

    .line 27
    invoke-virtual {p0}, Lcom/oneplus/settings/OPFontStyleSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private setFontStyle(I)V
    .locals 2
    .param p1, "value"    # I

    .line 95
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/settings/OPFontStyleSettings$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/settings/OPFontStyleSettings$1;-><init>(Lcom/oneplus/settings/OPFontStyleSettings;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 113
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 118
    const/16 v0, 0x270f

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f0a052c

    if-ne v0, v3, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/oneplus/settings/OPFontStyleSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oem_font_mode"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 81
    .local v0, "value":I
    if-ne v0, v2, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-direct {p0, v2}, Lcom/oneplus/settings/OPFontStyleSettings;->setFontStyle(I)V

    .line 83
    iget-object v3, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSystemFontButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 84
    iget-object v2, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSlateFontButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 85
    .end local v0    # "value":I
    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f0a04bf

    if-ne v0, v3, :cond_3

    .line 86
    invoke-virtual {p0}, Lcom/oneplus/settings/OPFontStyleSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oem_font_mode"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 87
    .restart local v0    # "value":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    return-void

    .line 88
    :cond_2
    invoke-direct {p0, v3}, Lcom/oneplus/settings/OPFontStyleSettings;->setFontStyle(I)V

    .line 89
    iget-object v3, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSlateFontButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 90
    iget-object v2, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSystemFontButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 92
    .end local v0    # "value":I
    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 32
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/oneplus/settings/OPFontStyleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/oneplus/settings/OPFontStyleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120b21

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 36
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "root":Landroid/view/View;
    const v1, 0x102003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 49
    .local v1, "listContainer":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 51
    const v2, 0x7f0d0168

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 52
    .local v2, "content":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    const v3, 0x7f0a052d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSystemFontButton:Landroid/widget/RadioButton;

    .line 54
    const v3, 0x7f0a04c0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSlateFontButton:Landroid/widget/RadioButton;

    .line 55
    const v3, 0x7f0a052c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSystemFont:Landroid/view/View;

    .line 56
    const v3, 0x7f0a04bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSlateFont:Landroid/view/View;

    .line 59
    iget-object v3, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSystemFont:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v3, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSlateFont:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-object v0
.end method

.method public onResume()V
    .locals 5

    .line 69
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 70
    invoke-virtual {p0}, Lcom/oneplus/settings/OPFontStyleSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_font_mode"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 71
    .local v0, "value":I
    iget-object v1, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSystemFontButton:Landroid/widget/RadioButton;

    if-ne v0, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 72
    iget-object v1, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSlateFontButton:Landroid/widget/RadioButton;

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 73
    return-void
.end method
