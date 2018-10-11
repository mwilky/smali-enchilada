.class public Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;
.super Lcom/oneplus/lib/widget/preference/OPPreferenceFragment;
.source "AodDisplayPeriodPreferenceFragment.java"

# interfaces
.implements Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;
.implements Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final KEY_DISPLY_TIME_END:Ljava/lang/String; = "display_time_end"

.field public static final KEY_DISPLY_TIME_START:Ljava/lang/String; = "display_time_start"

.field private static final KEY_MAIN_SCREEN:Ljava/lang/String; = "main_screen"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mEndPreference:Lcom/oneplus/lib/preference/Preference;

.field private mEndTime:Lcom/oneplus/settings/TextTime;

.field private mRootPreference:Lcom/oneplus/lib/preference/PreferenceScreen;

.field private mStartPreference:Lcom/oneplus/lib/preference/Preference;

.field private mStartTime:Lcom/oneplus/settings/TextTime;

.field mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AodDisplayPeriodPreferenceFragment"

    sput-object v0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/preference/OPPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private setSummary()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_time_start"

    iget v2, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mStartTime:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/TextTime;->setTime(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mStartPreference:Lcom/oneplus/lib/preference/Preference;

    iget-object v2, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mStartTime:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v2}, Lcom/oneplus/settings/TextTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSummary: start from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mStartTime:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v3}, Lcom/oneplus/settings/TextTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_time_end"

    iget v3, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mUserId:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mEndTime:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v2, v1}, Lcom/oneplus/settings/TextTime;->setTime(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mEndPreference:Lcom/oneplus/lib/preference/Preference;

    iget-object v3, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mEndTime:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v3}, Lcom/oneplus/settings/TextTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSummary: end to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mEndTime:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v4}, Lcom/oneplus/settings/TextTime;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/preference/OPPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f140000

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mUserId:I

    const-string v0, "main_screen"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mRootPreference:Lcom/oneplus/lib/preference/PreferenceScreen;

    const-string v0, "display_time_start"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mStartPreference:Lcom/oneplus/lib/preference/Preference;

    const-string v0, "display_time_end"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mEndPreference:Lcom/oneplus/lib/preference/Preference;

    new-instance v0, Lcom/oneplus/settings/TextTime;

    iget-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mContext:Landroid/content/Context;

    const-string v2, "display_from"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/TextTime;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mStartTime:Lcom/oneplus/settings/TextTime;

    new-instance v0, Lcom/oneplus/settings/TextTime;

    iget-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mContext:Landroid/content/Context;

    const-string v2, "display_to"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/TextTime;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mEndTime:Lcom/oneplus/settings/TextTime;

    iget-object v0, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f10013e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mStartPreference:Lcom/oneplus/lib/preference/Preference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mStartPreference:Lcom/oneplus/lib/preference/Preference;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/preference/Preference;->setOnPreferenceChangeListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mStartPreference:Lcom/oneplus/lib/preference/Preference;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/preference/Preference;->setOnPreferenceClickListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mEndPreference:Lcom/oneplus/lib/preference/Preference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mEndPreference:Lcom/oneplus/lib/preference/Preference;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/preference/Preference;->setOnPreferenceChangeListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mEndPreference:Lcom/oneplus/lib/preference/Preference;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/preference/Preference;->setOnPreferenceClickListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;)V

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->setSummary()V

    return-void
.end method

.method public onPreferenceChange(Lcom/oneplus/lib/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Lcom/oneplus/lib/preference/Preference;)Z
    .locals 12

    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "display_time_start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mStartTime:Lcom/oneplus/settings/TextTime;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mEndTime:Lcom/oneplus/settings/TextTime;

    :goto_0
    invoke-virtual {v1}, Lcom/oneplus/settings/TextTime;->getHour()I

    move-result v9

    invoke-virtual {v1}, Lcom/oneplus/settings/TextTime;->getMin()I

    move-result v10

    sget-object v2, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceClick: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Landroid/app/TimePickerDialog;

    iget-object v3, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f11033a

    new-instance v5, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment$1;

    invoke-direct {v5, p0, v1, p1, v0}, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment$1;-><init>(Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;Lcom/oneplus/settings/TextTime;Lcom/oneplus/lib/preference/Preference;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    move-object v2, v11

    move v6, v9

    move v7, v10

    invoke-direct/range {v2 .. v8}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v11}, Landroid/app/TimePickerDialog;->show()V

    const/4 v2, 0x0

    return v2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/widget/preference/OPPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
