.class public Lcom/oneplus/lib/preference/RingtonePreference;
.super Lcom/oneplus/lib/preference/Preference;
.source "RingtonePreference.java"

# interfaces
.implements Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;


# static fields
.field private static final EXTRA_RINGTONE_AUDIO_ATTRIBUTES_FLAGS:Ljava/lang/String; = "android.intent.extra.ringtone.AUDIO_ATTRIBUTES_FLAGS"

.field private static final FLAG_BYPASS_INTERRUPTION_POLICY:I = 0x40

.field private static final TAG:Ljava/lang/String; = "RingtonePreference"

.field private static getDefaultRingtoneUriBySubId:Ljava/lang/reflect/Method;


# instance fields
.field private mRequestCode:I

.field private mRingtoneType:I

.field private mShowDefault:Z

.field private mShowSilent:Z

.field private mSubscriptionID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/lib/preference/RingtonePreference;->getDefaultRingtoneUriBySubId:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_ringtonePreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mSubscriptionID:I

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->RingtonePreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->RingtonePreference_android_ringtoneType:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mRingtoneType:I

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->RingtonePreference_android_showDefault:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mShowDefault:Z

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->RingtonePreference_android_showSilent:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mShowSilent:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getRingtoneType()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mRingtoneType:I

    return v0
.end method

.method public getShowDefault()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mShowDefault:Z

    return v0
.end method

.method public getShowSilent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mShowSilent:Z

    return v0
.end method

.method public getSubId()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mSubscriptionID:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mRequestCode:I

    if-ne p1, v0, :cond_2

    if-eqz p3, :cond_1

    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/RingtonePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/RingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToHierarchy(Lcom/oneplus/lib/preference/PreferenceManager;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/Preference;->onAttachedToHierarchy(Lcom/oneplus/lib/preference/PreferenceManager;)V

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/preference/PreferenceManager;->registerOnActivityResultListener(Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;)V

    invoke-virtual {p1}, Lcom/oneplus/lib/preference/PreferenceManager;->getNextRequestCode()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mRequestCode:I

    return-void
.end method

.method protected onClick()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.oneplus.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/RingtonePreference;->getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/lib/preference/PreferenceManager;->getFragment()Lcom/oneplus/lib/preference/PreferenceFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mRequestCode:I

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/lib/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/RingtonePreference;->getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/preference/PreferenceManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mRequestCode:I

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/RingtonePreference;->onRestoreRingtone()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    iget-boolean v1, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mShowDefault:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mShowDefault:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/RingtonePreference;->getRingtoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :try_start_0
    sget-object v0, Lcom/oneplus/lib/preference/RingtonePreference;->getDefaultRingtoneUriBySubId:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-class v3, Landroid/media/RingtoneManager;

    move-object v0, v3

    const-string v3, "getDefaultRingtoneUriBySubId"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/oneplus/lib/preference/RingtonePreference;->getDefaultRingtoneUriBySubId:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v0, Lcom/oneplus/lib/preference/RingtonePreference;->getDefaultRingtoneUriBySubId:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    const-string v0, "android.intent.extra.ringtone.DEFAULT_URI"

    sget-object v3, Lcom/oneplus/lib/preference/RingtonePreference;->getDefaultRingtoneUriBySubId:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/RingtonePreference;->getSubId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_1
    :goto_0
    goto :goto_1

    :cond_2
    const-string v0, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/RingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    :goto_1
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    iget-boolean v1, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mShowSilent:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "android.intent.extra.ringtone.TYPE"

    iget v1, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mRingtoneType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/RingtonePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.ringtone.AUDIO_ATTRIBUTES_FLAGS"

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/RingtonePreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    nop

    :cond_0
    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/RingtonePreference;->persistString(Ljava/lang/String;)Z

    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/RingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public setRingtoneType(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mRingtoneType:I

    return-void
.end method

.method public setShowDefault(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mShowDefault:Z

    return-void
.end method

.method public setShowSilent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mShowSilent:Z

    return-void
.end method

.method public setSubId(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mSubscriptionID:I

    return-void
.end method
