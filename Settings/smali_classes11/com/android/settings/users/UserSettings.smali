.class public Lcom/android/settings/users/UserSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/UserSettings$SummaryProvider;
    }
.end annotation


# static fields
.field private static final ACTION_EDIT_EMERGENCY_INFO:Ljava/lang/String; = "android.settings.EDIT_EMERGENGY_INFO"

.field private static final DIALOG_ADD_USER:I = 0x2

.field private static final DIALOG_CHOOSE_USER_TYPE:I = 0x6

.field private static final DIALOG_CONFIRM_EXIT_GUEST:I = 0x8

.field private static final DIALOG_CONFIRM_REMOVE:I = 0x1

.field private static final DIALOG_NEED_LOCKSCREEN:I = 0x7

.field private static final DIALOG_SETUP_PROFILE:I = 0x4

.field private static final DIALOG_SETUP_USER:I = 0x3

.field private static final DIALOG_USER_CANNOT_MANAGE:I = 0x5

.field private static final DIALOG_USER_PROFILE_EDITOR:I = 0x9

.field private static final KEY_ADD_USER:Ljava/lang/String; = "user_add"

.field private static final KEY_ADD_USER_LONG_MESSAGE_DISPLAYED:Ljava/lang/String; = "key_add_user_long_message_displayed"

.field private static final KEY_ADD_USER_WHEN_LOCKED:Ljava/lang/String; = "user_settings_add_users_when_locked"

.field private static final KEY_EMERGENCY_INFO:Ljava/lang/String; = "emergency_info"

.field private static final KEY_SUMMARY:Ljava/lang/String; = "summary"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_USER_LIST:Ljava/lang/String; = "user_list"

.field private static final KEY_USER_ME:Ljava/lang/String; = "user_me"

.field private static final MENU_REMOVE_USER:I = 0x1

.field private static final MESSAGE_CONFIG_USER:I = 0x3

.field private static final MESSAGE_SETUP_USER:I = 0x2

.field private static final MESSAGE_UPDATE_LIST:I = 0x1

.field private static final REQUEST_CHOOSE_LOCK:I = 0xa

.field private static final SAVE_ADDING_USER:Ljava/lang/String; = "adding_user"

.field private static final SAVE_REMOVING_USER:Ljava/lang/String; = "removing_user"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final STORAGE_SIZE_LIMIT:J = 0xc800000L

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String; = "UserSettings"

.field private static final USER_TYPE_RESTRICTED_PROFILE:I = 0x2

.field private static final USER_TYPE_USER:I = 0x1

.field private static sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddUser:Lcom/android/settingslib/RestrictedPreference;

.field private mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

.field private mAddedUserId:I

.field private mAddingUser:Z

.field private mAddingUserName:Ljava/lang/String;

.field private mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

.field private mHandler:Landroid/os/Handler;

.field private mMePreference:Lcom/android/settings/users/UserPreference;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRemovingUserId:I

.field private mShouldUpdateUserList:Z

.field private mUserCaps:Lcom/android/settings/users/UserCapabilities;

.field private mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

.field private final mUserLock:Ljava/lang/Object;

.field private mUserManager:Landroid/os/UserManager;

.field private tm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 177
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/settings/users/UserSettings;->sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;

    .line 1252
    sget-object v0, Lcom/android/settings/users/-$$Lambda$UserSettings$Eg6plZiaX7G7UUvF4Q46lU8PMRw;->INSTANCE:Lcom/android/settings/users/-$$Lambda$UserSettings$Eg6plZiaX7G7UUvF4Q46lU8PMRw;

    sput-object v0, Lcom/android/settings/users/UserSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 1255
    new-instance v0, Lcom/android/settings/users/UserSettings$15;

    invoke-direct {v0}, Lcom/android/settings/users/UserSettings$15;-><init>()V

    sput-object v0, Lcom/android/settings/users/UserSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    .line 176
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    .line 179
    new-instance v0, Lcom/android/settings/users/EditUserInfoController;

    invoke-direct {v0}, Lcom/android/settings/users/EditUserInfoController;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    .line 188
    new-instance v0, Lcom/android/settings/users/UserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$1;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    .line 205
    new-instance v0, Lcom/android/settings/users/UserSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$2;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 303
    new-instance v0, Lcom/android/settings/users/UserSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$3;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 116
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;
    .param p1, "x1"    # I

    .line 116
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->onUserCreated(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 116
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeUserNow()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;
    .param p1, "x1"    # I

    .line 116
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/users/UserSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 116
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;
    .param p1, "x1"    # I

    .line 116
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->switchUserNow(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;
    .param p1, "x1"    # I

    .line 116
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->onAddUserClicked(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 116
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->launchChooseLockscreen()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 116
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->exitGuest()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/users/UserSettings;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 116
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 116
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->createTrustedUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 116
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->createRestrictedProfile()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/users/UserSettings;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/UserSettings;->onManageUserClicked(IZ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/users/UserSettings;)Lcom/android/settings/users/UserCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 116
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;
    .param p1, "x1"    # I

    .line 116
    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/users/UserSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 116
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/users/UserSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;
    .param p1, "x1"    # I

    .line 116
    iput p1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/users/UserSettings;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 116
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 116
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 116
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/users/UserSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 116
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/users/UserSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;
    .param p1, "x1"    # Z

    .line 116
    iput-boolean p1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/users/UserSettings;)Lcom/android/settingslib/RestrictedPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 116
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/users/UserSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .line 116
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->finishLoadProfile(Ljava/lang/String;)V

    return-void
.end method

.method private addUserNow(I)V
    .locals 2
    .param p1, "userType"    # I

    .line 770
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 771
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    .line 772
    if-ne p1, v1, :cond_0

    const v1, 0x7f1212ee

    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 773
    :cond_0
    const v1, 0x7f1212ed

    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    .line 775
    new-instance v1, Lcom/android/settings/users/UserSettings$13;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/users/UserSettings$13;-><init>(Lcom/android/settings/users/UserSettings;I)V

    .line 803
    invoke-virtual {v1}, Lcom/android/settings/users/UserSettings$13;->start()V

    .line 804
    monitor-exit v0

    .line 805
    return-void

    .line 804
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static assignDefaultPhoto(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 1197
    if-nez p0, :cond_0

    .line 1198
    const/4 v0, 0x0

    return v0

    .line 1200
    :cond_0
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1201
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/settings/users/UserSettings;->getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1202
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, p1, v1}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 1204
    const/4 v2, 0x1

    return v2
.end method

.method static copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/content/pm/UserInfo;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1209
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 1211
    .local v0, "contactUri":Landroid/net/Uri;
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 1213
    .local v1, "userId":I
    :goto_0
    nop

    .line 1214
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    .line 1213
    invoke-static {v2, v0, v3}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v2

    .line 1217
    .local v2, "avatarDataStream":Ljava/io/InputStream;
    if-nez v2, :cond_1

    .line 1218
    invoke-static {p0, v1}, Lcom/android/settings/users/UserSettings;->assignDefaultPhoto(Landroid/content/Context;I)Z

    .line 1219
    return-void

    .line 1222
    :cond_1
    const-string v3, "user"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1223
    .local v3, "um":Landroid/os/UserManager;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1224
    .local v4, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v1, v4}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 1226
    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1228
    goto :goto_1

    .line 1227
    :catch_0
    move-exception v5

    .line 1229
    :goto_1
    return-void
.end method

.method private createRestrictedProfile()Landroid/content/pm/UserInfo;
    .locals 3

    .line 493
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->createRestrictedProfile(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 494
    .local v0, "newUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v2}, Lcom/android/settings/users/UserSettings;->assignDefaultPhoto(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 495
    const/4 v1, 0x0

    return-object v1

    .line 497
    :cond_0
    return-object v0
.end method

.method private createTrustedUser()Landroid/content/pm/UserInfo;
    .locals 3

    .line 501
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 502
    .local v0, "newUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v2}, Lcom/android/settings/users/UserSettings;->assignDefaultPhoto(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 503
    const/4 v1, 0x0

    return-object v1

    .line 505
    :cond_0
    return-object v0
.end method

.method private encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .line 1114
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settingslib/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/CircleFramedDrawable;

    move-result-object v0

    .line 1115
    .local v0, "circled":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method private exitGuest()V
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-nez v0, :cond_0

    .line 821
    return-void

    .line 823
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeThisUser()V

    .line 824
    return-void
.end method

.method private finishLoadProfile(Ljava/lang/String;)V
    .locals 4
    .param p1, "profileName"    # Ljava/lang/String;

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const v1, 0x7f121303

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/users/UserSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 431
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 432
    .local v0, "myUserId":I
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 433
    .local v1, "b":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 434
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 435
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 437
    :cond_1
    return-void
.end method

.method public static getAvailableInternalMemorySize()J
    .locals 8

    .line 1102
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 1103
    .local v0, "path":Ljava/io/File;
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1104
    .local v1, "stat":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    .line 1105
    .local v2, "blockSize":J
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    .line 1106
    .local v4, "availableBlocks":J
    mul-long v6, v4, v2

    return-wide v6
.end method

.method private static getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "userId"    # I

    .line 1173
    const/4 v0, 0x0

    .line 1175
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v1, Lcom/android/settings/users/UserSettings;->sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1176
    if-nez v0, :cond_0

    .line 1180
    const/4 v1, 0x0

    .line 1181
    invoke-static {p1, v1}, Lcom/android/settingslib/drawable/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1180
    invoke-static {v1}, Lcom/android/settingslib/drawable/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1183
    sget-object v1, Lcom/android/settings/users/UserSettings;->sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1185
    :cond_0
    return-object v0
.end method

.method private getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1041
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1042
    nop

    .line 1043
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, -0x2710

    invoke-static {v0, v1}, Lcom/android/settings/users/UserSettings;->getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1042
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 1045
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getMaxRealUsers()I
    .locals 6

    .line 1007
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1008
    .local v0, "maxUsersAndGuest":I
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 1010
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v2, 0x0

    .line 1011
    .local v2, "managedProfiles":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1012
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1013
    add-int/lit8 v2, v2, 0x1

    .line 1015
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    goto :goto_0

    .line 1016
    :cond_1
    sub-int v3, v0, v2

    return v3
.end method

.method private hasLockscreenSecurity()Z
    .locals 2

    .line 440
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 441
    .local v0, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    return v1
.end method

.method private isInitialized(Landroid/content/pm/UserInfo;)Z
    .locals 1
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .line 1110
    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$static$1(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .line 1253
    new-instance v0, Lcom/android/settings/users/UserSettings$SummaryProvider;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/users/UserSettings$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-object v0
.end method

.method public static synthetic lambda$updateUserList$0(Lcom/android/settings/users/UserSettings;ILandroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "finalGuestId"    # I
    .param p2, "preference"    # Landroid/support/v7/preference/Preference;

    .line 937
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v0

    .line 938
    .local v0, "canSwitchUsers":Z
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result v1

    .line 939
    .local v1, "moreUsers":Z
    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-nez v2, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    .line 943
    :cond_0
    move v2, p1

    .line 944
    .local v2, "id":I
    const/16 v3, -0xb

    if-ne v2, v3, :cond_1

    .line 945
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    .line 946
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 945
    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 947
    .local v3, "guest":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_1

    .line 948
    iget v2, v3, Landroid/content/pm/UserInfo;->id:I

    .line 952
    .end local v3    # "guest":Landroid/content/pm/UserInfo;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    goto :goto_0

    .line 953
    :catch_0
    move-exception v3

    .line 954
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 956
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 940
    .end local v2    # "id":I
    :cond_2
    :goto_1
    const/4 v2, 0x0

    return v2
.end method

.method private launchChooseLockscreen()V
    .locals 3

    .line 445
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    .local v0, "chooseLockIntent":Landroid/content/Intent;
    const-string v1, "minimum_quality"

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 448
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/users/UserSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 449
    return-void
.end method

.method private loadIconsAsync(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1020
    .local p1, "missingIcons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/android/settings/users/UserSettings$14;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$14;-><init>(Lcom/android/settings/users/UserSettings;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1037
    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserSettings$14;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1038
    return-void
.end method

.method private loadProfile()V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 406
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const v1, 0x7f1212df

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserPreference;->setTitle(I)V

    .line 407
    return-void

    .line 410
    :cond_0
    new-instance v0, Lcom/android/settings/users/UserSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$4;-><init>(Lcom/android/settings/users/UserSettings;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 425
    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserSettings$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 426
    return-void
.end method

.method private onAddUserClicked(I)V
    .locals 3
    .param p1, "userType"    # I

    .line 465
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 466
    :try_start_0
    iget v1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-nez v1, :cond_1

    .line 467
    const/4 v1, 0x2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 472
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->hasLockscreenSecurity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 473
    invoke-direct {p0, v1}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    goto :goto_0

    .line 475
    :cond_0
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_0

    .line 469
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 470
    nop

    .line 480
    :cond_1
    :goto_0
    monitor-exit v0

    .line 481
    return-void

    .line 480
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onManageUserClicked(IZ)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "newUser"    # Z

    .line 509
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    .line 510
    const/16 v0, -0xb

    if-ne p1, v0, :cond_0

    .line 511
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 512
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "guest_user"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 513
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/users/UserDetailsSettings;

    .line 514
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 515
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f1212e2

    .line 516
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 517
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 518
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 519
    return-void

    .line 521
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 522
    .local v0, "info":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v1, v1, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-eqz v1, :cond_1

    .line 523
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 524
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "user_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 525
    const-string v2, "new_user"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 526
    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v3, Lcom/android/settings/users/RestrictedProfileSettings;

    .line 527
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    .line 528
    invoke-virtual {v2, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    const v3, 0x7f1212f7

    .line 529
    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    .line 530
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getMetricsCategory()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    .line 531
    invoke-virtual {v2}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 532
    .end local v1    # "extras":Landroid/os/Bundle;
    goto :goto_0

    :cond_1
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 534
    invoke-static {p0}, Lcom/android/settings/users/OwnerInfoSettings;->show(Landroid/app/Fragment;)V

    goto :goto_0

    .line 535
    :cond_2
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v1, v1, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-eqz v1, :cond_3

    .line 536
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 537
    .restart local v1    # "extras":Landroid/os/Bundle;
    const-string v2, "user_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 538
    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v3, Lcom/android/settings/users/UserDetailsSettings;

    .line 539
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    .line 540
    invoke-virtual {v2, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 541
    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    .line 542
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getMetricsCategory()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    .line 543
    invoke-virtual {v2}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 545
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_3
    :goto_0
    return-void
.end method

.method private onRemoveUserClicked(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 484
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 485
    :try_start_0
    iget v1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-nez v1, :cond_0

    .line 486
    iput p1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 487
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 489
    :cond_0
    monitor-exit v0

    .line 490
    return-void

    .line 489
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onUserCreated(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 548
    iput p1, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    .line 549
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    .line 550
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    const-string v0, "UserSettings"

    const-string v1, "Cannot show dialog after onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_0

    .line 557
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 559
    :goto_0
    return-void
.end method

.method private removeThisUser()V
    .locals 3

    .line 757
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 758
    const-string v0, "UserSettings"

    const-string v1, "Cannot remove current user when switching is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    return-void

    .line 762
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 763
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    goto :goto_0

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "UserSettings"

    const-string v2, "Unable to remove self user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private removeUserNow()V
    .locals 2

    .line 742
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 743
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeThisUser()V

    goto :goto_0

    .line 745
    :cond_0
    new-instance v0, Lcom/android/settings/users/UserSettings$12;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$12;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 752
    invoke-virtual {v0}, Lcom/android/settings/users/UserSettings$12;->start()V

    .line 754
    :goto_0
    return-void
.end method

.method private setPhotoId(Landroid/support/v7/preference/Preference;Landroid/content/pm/UserInfo;)V
    .locals 2
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;
    .param p2, "user"    # Landroid/content/pm/UserInfo;

    .line 1049
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1050
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1051
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1053
    :cond_0
    return-void
.end method

.method private switchUserNow(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 809
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    goto :goto_0

    .line 810
    :catch_0
    move-exception v0

    .line 813
    :goto_0
    return-void
.end method

.method private updateUserList()V
    .locals 21

    .line 827
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 828
    :cond_0
    iget-object v1, v0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 829
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 831
    .local v3, "context":Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    .line 832
    .local v4, "voiceCapable":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 833
    .local v5, "missingIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 834
    .local v6, "userPreferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/users/UserPreference;>;"
    const/16 v7, -0xb

    .line 835
    .local v7, "guestId":I
    iget-object v8, v0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v9, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 838
    .local v9, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v12

    if-nez v12, :cond_1

    .line 841
    goto :goto_0

    .line 844
    :cond_1
    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-ne v12, v13, :cond_2

    .line 845
    iget-object v10, v0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    .local v10, "pref":Lcom/android/settings/users/UserPreference;
    goto/16 :goto_5

    .line 846
    .end local v10    # "pref":Lcom/android/settings/users/UserPreference;
    :cond_2
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 848
    iget v7, v9, Landroid/content/pm/UserInfo;->id:I

    .line 849
    goto :goto_0

    .line 859
    :cond_3
    iget-object v12, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v12, v12, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-eqz v12, :cond_5

    if-nez v4, :cond_4

    .line 860
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_4
    move v12, v2

    goto :goto_1

    :cond_5
    move v12, v10

    .line 861
    .local v12, "showSettings":Z
    :goto_1
    iget-object v13, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v13, v13, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-eqz v13, :cond_6

    if-nez v4, :cond_6

    .line 862
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v13

    if-nez v13, :cond_6

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v13

    if-nez v13, :cond_6

    move v13, v2

    goto :goto_2

    :cond_6
    move v13, v10

    .line 863
    .local v13, "showDelete":Z
    :goto_2
    new-instance v20, Lcom/android/settings/users/UserPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    .line 864
    if-eqz v12, :cond_7

    .line 865
    move-object/from16 v18, v0

    goto :goto_3

    .line 864
    :cond_7
    nop

    .line 865
    move-object/from16 v18, v11

    :goto_3
    if-eqz v13, :cond_8

    move-object/from16 v19, v0

    goto :goto_4

    :cond_8
    move-object/from16 v19, v11

    :goto_4
    move v11, v14

    move-object/from16 v14, v20

    move/from16 v17, v11

    invoke-direct/range {v14 .. v19}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    move-object/from16 v11, v20

    .line 866
    .local v11, "pref":Lcom/android/settings/users/UserPreference;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "id="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/settings/users/UserPreference;->setKey(Ljava/lang/String;)V

    .line 867
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 869
    const v14, 0x7f1212b5

    invoke-virtual {v11, v14}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    .line 871
    :cond_9
    iget-object v14, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v14}, Lcom/android/settings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 872
    invoke-virtual {v11, v10}, Lcom/android/settings/users/UserPreference;->setSelectable(Z)V

    .line 874
    .end local v12    # "showSettings":Z
    .end local v13    # "showDelete":Z
    move-object v10, v11

    .end local v11    # "pref":Lcom/android/settings/users/UserPreference;
    .restart local v10    # "pref":Lcom/android/settings/users/UserPreference;
    :goto_5
    if-nez v10, :cond_a

    .line 875
    goto/16 :goto_0

    .line 877
    :cond_a
    invoke-direct {v0, v9}, Lcom/android/settings/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 878
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 879
    const v11, 0x7f121301

    invoke-virtual {v10, v11}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    goto :goto_6

    .line 881
    :cond_b
    const v11, 0x7f121300

    invoke-virtual {v10, v11}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    .line 885
    :goto_6
    iget-object v11, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v11, v11, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    if-nez v11, :cond_d

    .line 886
    invoke-virtual {v10, v0}, Lcom/android/settings/users/UserPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 887
    invoke-virtual {v10, v2}, Lcom/android/settings/users/UserPreference;->setSelectable(Z)V

    goto :goto_7

    .line 889
    :cond_c
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 890
    const v11, 0x7f121302

    invoke-virtual {v10, v11}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    .line 892
    :cond_d
    :goto_7
    iget-object v11, v9, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v11, :cond_f

    .line 893
    iget-object v11, v0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_e

    .line 895
    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 898
    :cond_e
    invoke-direct {v0, v10, v9}, Lcom/android/settings/users/UserSettings;->setPhotoId(Landroid/support/v7/preference/Preference;Landroid/content/pm/UserInfo;)V

    goto :goto_8

    .line 902
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 904
    .end local v9    # "user":Landroid/content/pm/UserInfo;
    .end local v10    # "pref":Lcom/android/settings/users/UserPreference;
    :goto_8
    goto/16 :goto_0

    .line 907
    :cond_10
    iget-boolean v8, v0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-eqz v8, :cond_11

    .line 908
    new-instance v8, Lcom/android/settings/users/UserPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v15, -0xa

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v8

    invoke-direct/range {v12 .. v17}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 910
    .local v8, "pref":Lcom/android/settings/users/UserPreference;
    invoke-virtual {v8, v10}, Lcom/android/settings/users/UserPreference;->setEnabled(Z)V

    .line 911
    iget-object v9, v0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/settings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 912
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 913
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    .end local v8    # "pref":Lcom/android/settings/users/UserPreference;
    :cond_11
    iget-object v8, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v8, v8, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-nez v8, :cond_16

    iget-object v8, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v8, v8, Lcom/android/settings/users/UserCapabilities;->mCanAddGuest:Z

    if-nez v8, :cond_12

    iget-object v8, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v8, v8, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    if-eqz v8, :cond_16

    .line 920
    :cond_12
    new-instance v8, Lcom/android/settings/users/UserPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v15, -0xb

    .line 922
    iget-object v9, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v9, v9, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-eqz v9, :cond_13

    if-eqz v4, :cond_13

    move-object/from16 v16, v0

    goto :goto_9

    :cond_13
    move-object/from16 v16, v11

    :goto_9
    const/16 v17, 0x0

    move-object v12, v8

    invoke-direct/range {v12 .. v17}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 924
    .restart local v8    # "pref":Lcom/android/settings/users/UserPreference;
    const v9, 0x7f1212e2

    invoke-virtual {v8, v9}, Lcom/android/settings/users/UserPreference;->setTitle(I)V

    .line 925
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 926
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    iget-object v9, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v9, v9, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUser:Z

    if-eqz v9, :cond_14

    .line 928
    iget-object v9, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-object v9, v9, Lcom/android/settings/users/UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v8, v9}, Lcom/android/settings/users/UserPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_a

    .line 929
    :cond_14
    iget-object v9, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v9, v9, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    if-eqz v9, :cond_15

    .line 930
    invoke-static {v3}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings/users/UserPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_a

    .line 932
    :cond_15
    invoke-virtual {v8, v11}, Lcom/android/settings/users/UserPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 934
    :goto_a
    move v9, v7

    .line 935
    .local v9, "finalGuestId":I
    new-instance v12, Lcom/android/settings/users/-$$Lambda$UserSettings$wMqzhBHYMbgNNY7TSuzlNB8n9UY;

    invoke-direct {v12, v0, v9}, Lcom/android/settings/users/-$$Lambda$UserSettings$wMqzhBHYMbgNNY7TSuzlNB8n9UY;-><init>(Lcom/android/settings/users/UserSettings;I)V

    invoke-virtual {v8, v12}, Lcom/android/settings/users/UserPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 961
    .end local v8    # "pref":Lcom/android/settings/users/UserPreference;
    .end local v9    # "finalGuestId":I
    :cond_16
    sget-object v8, Lcom/android/settings/users/UserPreference;->SERIAL_NUMBER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 963
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 966
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_17

    .line 967
    invoke-direct {v0, v5}, Lcom/android/settings/users/UserSettings;->loadIconsAsync(Ljava/util/List;)V

    .line 971
    :cond_17
    iget-object v8, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 973
    iget-object v8, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v8, v8, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    if-eqz v8, :cond_18

    .line 974
    iget-object v8, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    const v9, 0x7f1212ea

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    goto :goto_b

    .line 976
    :cond_18
    iget-object v8, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 979
    :goto_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/users/UserPreference;

    .line 980
    .local v9, "userPreference":Lcom/android/settings/users/UserPreference;
    const v12, 0x7fffffff

    invoke-virtual {v9, v12}, Lcom/android/settings/users/UserPreference;->setOrder(I)V

    .line 981
    iget-object v12, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v12, v9}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 982
    .end local v9    # "userPreference":Lcom/android/settings/users/UserPreference;
    goto :goto_c

    .line 985
    :cond_19
    iget-object v8, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v8, v8, Lcom/android/settings/users/UserCapabilities;->mCanAddUser:Z

    if-nez v8, :cond_1a

    iget-object v8, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v8, v8, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    if-eqz v8, :cond_1e

    .line 986
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 987
    iget-object v8, v0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result v8

    .line 989
    .local v8, "moreUsers":Z
    iget-object v9, v0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v9

    .line 990
    .local v9, "canSwitchUsers":Z
    iget-object v12, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v8, :cond_1b

    iget-boolean v13, v0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-nez v13, :cond_1b

    if-eqz v9, :cond_1b

    move v13, v2

    goto :goto_d

    :cond_1b
    move v13, v10

    :goto_d
    invoke-virtual {v12, v13}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 992
    if-nez v8, :cond_1c

    .line 993
    iget-object v12, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    const v13, 0x7f1212a8

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getMaxRealUsers()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v10

    invoke-virtual {v0, v13, v2}, Lcom/android/settings/users/UserSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 995
    :cond_1c
    iget-object v2, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v2, v11}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 997
    :goto_e
    iget-object v2, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v2}, Lcom/android/settingslib/RestrictedPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 998
    iget-object v2, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    .line 999
    iget-object v10, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v10, v10, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUser:Z

    if-eqz v10, :cond_1d

    iget-object v10, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-object v11, v10, Lcom/android/settings/users/UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    nop

    .line 998
    :cond_1d
    invoke-virtual {v2, v11}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 1003
    .end local v8    # "moreUsers":Z
    .end local v9    # "canSwitchUsers":Z
    :cond_1e
    return-void
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 1
    .param p1, "dialogId"    # I

    .line 717
    packed-switch p1, :pswitch_data_0

    .line 737
    const/4 v0, 0x0

    return v0

    .line 735
    :pswitch_0
    const/16 v0, 0x259

    return v0

    .line 733
    :pswitch_1
    const/16 v0, 0x258

    return v0

    .line 731
    :pswitch_2
    const/16 v0, 0x257

    return v0

    .line 729
    :pswitch_3
    const/16 v0, 0x256

    return v0

    .line 721
    :pswitch_4
    const/16 v0, 0x252

    return v0

    .line 727
    :pswitch_5
    const/16 v0, 0x255

    return v0

    .line 725
    :pswitch_6
    const/16 v0, 0x254

    return v0

    .line 723
    :pswitch_7
    const/16 v0, 0x253

    return v0

    .line 719
    :pswitch_8
    const/16 v0, 0x24f

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getHelpResource()I
    .locals 1

    .line 1151
    const v0, 0x7f120732

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 222
    const/16 v0, 0x60

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 453
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 455
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 456
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->hasLockscreenSecurity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    goto :goto_0

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/users/EditUserInfoController;->onActivityResult(IILandroid/content/Intent;)V

    .line 462
    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 1120
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/users/UserPreference;

    if-eqz v0, :cond_3

    .line 1121
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/users/UserPreference;

    invoke-virtual {v0}, Lcom/android/settings/users/UserPreference;->getUserId()I

    move-result v0

    .line 1122
    .local v0, "userId":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a02ff

    if-eq v1, v2, :cond_2

    const v2, 0x7f0a0565

    if-eq v1, v2, :cond_0

    .end local v0    # "userId":I
    goto :goto_0

    .line 1124
    .restart local v0    # "userId":I
    :cond_0
    nop

    .line 1125
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "no_remove_user"

    .line 1126
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 1125
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 1127
    .local v1, "removeDisallowedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v1, :cond_1

    .line 1128
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 1131
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->onRemoveUserClicked(I)V

    .line 1133
    goto :goto_0

    .line 1135
    .end local v1    # "removeDisallowedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/users/UserSettings;->onManageUserClicked(IZ)V

    .line 1139
    .end local v0    # "userId":I
    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 227
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 228
    const v0, 0x7f1600d2

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->addPreferencesFromResource(I)V

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 231
    return-void

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 234
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    const-string v3, "user_settings_add_users_when_locked"

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-direct {v1, v0, v3, v4}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 237
    .local v1, "screen":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v3, v1}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 239
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v3}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    .line 240
    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 242
    if-eqz p1, :cond_3

    .line 243
    const-string v3, "adding_user"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    const-string v3, "adding_user"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    .line 246
    :cond_1
    const-string v3, "removing_user"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 247
    const-string v3, "removing_user"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 249
    :cond_2
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v3, p1}, Lcom/android/settings/users/EditUserInfoController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 252
    :cond_3
    invoke-static {v0}, Lcom/android/settings/users/UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    .line 253
    const-string v3, "user"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    .line 254
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    if-nez v3, :cond_4

    .line 255
    return-void

    .line 258
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    .line 260
    .local v10, "myUserId":I
    const-string v3, "user_list"

    invoke-virtual {p0, v3}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    .line 261
    new-instance v3, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    move v7, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v3, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    .line 264
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const-string v4, "user_me"

    invoke-virtual {v3, v4}, Lcom/android/settings/users/UserPreference;->setKey(Ljava/lang/String;)V

    .line 265
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/users/UserPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 266
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-eqz v3, :cond_5

    .line 267
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const v4, 0x7f1212b5

    invoke-virtual {v3, v4}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    .line 269
    :cond_5
    const-string v3, "user_add"

    invoke-virtual {p0, v3}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/RestrictedPreference;

    iput-object v3, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    .line 270
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v3, v2}, Lcom/android/settingslib/RestrictedPreference;->useAdminDisabledSummary(Z)V

    .line 272
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings/users/UserCapabilities;->mCanAddUser:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 273
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/settingslib/RestrictedPreference;->setVisible(Z)V

    .line 274
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v3, p0}, Lcom/android/settingslib/RestrictedPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 276
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    if-nez v3, :cond_7

    .line 277
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    const v4, 0x7f1212ae

    invoke-virtual {v3, v4}, Lcom/android/settingslib/RestrictedPreference;->setTitle(I)V

    goto :goto_0

    .line 280
    :cond_6
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v3, v2}, Lcom/android/settingslib/RestrictedPreference;->setVisible(Z)V

    .line 282
    :cond_7
    :goto_0
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v9, v3

    .line 283
    .local v9, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v9, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    move-object v6, v9

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 285
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->loadProfile()V

    .line 286
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    .line 287
    iput-boolean v2, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    .line 290
    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/settings/users/UserSettings;->tm:Landroid/telephony/TelephonyManager;

    .line 291
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->tm:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 294
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 295
    const-string v3, "lock_screen_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    .line 296
    .local v3, "mLockScreenPreferenceGroup":Landroid/support/v7/preference/PreferenceGroup;
    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceGroup;->setVisible(Z)V

    .line 300
    .end local v3    # "mLockScreenPreferenceGroup":Landroid/support/v7/preference/PreferenceGroup;
    :cond_8
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .param p1, "dialogId"    # I

    .line 570
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 571
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 572
    :cond_0
    const v2, 0x104000a

    const/4 v3, 0x2

    const/high16 v4, 0x1040000

    packed-switch p1, :pswitch_data_0

    .line 711
    return-object v1

    .line 701
    :pswitch_0
    iget-object v5, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    .line 704
    invoke-virtual {v1}, Lcom/android/settings/users/UserPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    const v9, 0x7f120e46

    .line 707
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    .line 701
    move-object v6, p0

    move-object v10, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/settings/users/EditUserInfoController;->createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;

    move-result-object v1

    .line 708
    .local v1, "dlg":Landroid/app/Dialog;
    return-object v1

    .line 686
    .end local v1    # "dlg":Landroid/app/Dialog;
    :pswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1212dd

    .line 687
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f1212dc

    .line 688
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f1212de

    new-instance v5, Lcom/android/settings/users/UserSettings$11;

    invoke-direct {v5, p0}, Lcom/android/settings/users/UserSettings$11;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 689
    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 696
    invoke-virtual {v2, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 697
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 698
    .restart local v1    # "dlg":Landroid/app/Dialog;
    return-object v1

    .line 672
    .end local v1    # "dlg":Landroid/app/Dialog;
    :pswitch_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1212ec

    .line 673
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f1212f8

    new-instance v5, Lcom/android/settings/users/UserSettings$10;

    invoke-direct {v5, p0}, Lcom/android/settings/users/UserSettings$10;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 674
    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 681
    invoke-virtual {v2, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 682
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 683
    .restart local v1    # "dlg":Landroid/app/Dialog;
    return-object v1

    .line 645
    .end local v1    # "dlg":Landroid/app/Dialog;
    :pswitch_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 646
    .local v1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 647
    .local v2, "addUserItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "title"

    const v5, 0x7f1212ad

    invoke-virtual {p0, v5}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    const-string v4, "summary"

    const v5, 0x7f1212ac

    invoke-virtual {p0, v5}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v10, v4

    .line 650
    .local v10, "addProfileItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "title"

    const v5, 0x7f1212ab

    invoke-virtual {p0, v5}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    const-string v4, "summary"

    const v5, 0x7f1212aa

    invoke-virtual {p0, v5}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v11, v4

    .line 655
    .local v11, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v12, Landroid/widget/SimpleAdapter;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0d02b5

    const-string v4, "title"

    const-string v6, "summary"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v8

    new-array v9, v3, [I

    fill-array-data v9, :array_0

    move-object v4, v12

    move-object v6, v1

    invoke-direct/range {v4 .. v9}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    move-object v3, v12

    .line 659
    .local v3, "adapter":Landroid/widget/SimpleAdapter;
    const v4, 0x7f1212b3

    invoke-virtual {v11, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 660
    new-instance v4, Lcom/android/settings/users/UserSettings$9;

    invoke-direct {v4, p0}, Lcom/android/settings/users/UserSettings$9;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 669
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 585
    .end local v1    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "addUserItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "adapter":Landroid/widget/SimpleAdapter;
    .end local v10    # "addProfileItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_4
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1212b7

    .line 586
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 587
    invoke-virtual {v3, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 588
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 585
    return-object v1

    .line 632
    :pswitch_5
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f1212fe

    .line 633
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v5, Lcom/android/settings/users/UserSettings$8;

    invoke-direct {v5, p0}, Lcom/android/settings/users/UserSettings$8;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 634
    invoke-virtual {v3, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 640
    invoke-virtual {v2, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 641
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 642
    .local v1, "dlg":Landroid/app/Dialog;
    return-object v1

    .line 618
    .end local v1    # "dlg":Landroid/app/Dialog;
    :pswitch_6
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1212fd

    .line 619
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f1212fc

    .line 620
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f1212fb

    new-instance v4, Lcom/android/settings/users/UserSettings$7;

    invoke-direct {v4, p0}, Lcom/android/settings/users/UserSettings$7;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 621
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f1212fa

    .line 627
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 628
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 629
    .restart local v1    # "dlg":Landroid/app/Dialog;
    return-object v1

    .line 590
    .end local v1    # "dlg":Landroid/app/Dialog;
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 592
    .local v5, "preferences":Landroid/content/SharedPreferences;
    const-string v7, "key_add_user_long_message_displayed"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 594
    .local v6, "longMessageDisplayed":Z
    if-eqz v6, :cond_1

    .line 595
    const v7, 0x7f1212b0

    goto :goto_0

    .line 596
    :cond_1
    const v7, 0x7f1212af

    .line 597
    .local v7, "messageResId":I
    :goto_0
    if-ne p1, v3, :cond_2

    .line 598
    const/4 v3, 0x1

    nop

    .line 599
    .local v3, "userType":I
    :cond_2
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f1212b2

    .line 600
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 601
    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/settings/users/UserSettings$6;

    invoke-direct {v9, p0, v3, v6, v5}, Lcom/android/settings/users/UserSettings$6;-><init>(Lcom/android/settings/users/UserSettings;IZLandroid/content/SharedPreferences;)V

    .line 602
    invoke-virtual {v8, v2, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 613
    invoke-virtual {v2, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 614
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 615
    .restart local v1    # "dlg":Landroid/app/Dialog;
    return-object v1

    .line 574
    .end local v1    # "dlg":Landroid/app/Dialog;
    .end local v3    # "userType":I
    .end local v5    # "preferences":Landroid/content/SharedPreferences;
    .end local v6    # "longMessageDisplayed":Z
    .end local v7    # "messageResId":I
    :pswitch_8
    nop

    .line 575
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    new-instance v3, Lcom/android/settings/users/UserSettings$5;

    invoke-direct {v3, p0}, Lcom/android/settings/users/UserSettings$5;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-static {v1, v2, v3}, Lcom/android/settings/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v1

    .line 582
    .restart local v1    # "dlg":Landroid/app/Dialog;
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x7f0a054f
        0x7f0a04f8
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "pos":I
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 377
    .local v1, "um":Landroid/os/UserManager;
    const-string v2, "no_remove_user"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 378
    .local v2, "allowRemoveUser":Z
    invoke-virtual {v1}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v4

    .line 379
    .local v4, "canSwitchUsers":Z
    iget-object v5, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v5, v5, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-nez v5, :cond_0

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 380
    iget-object v5, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v5

    .line 381
    .local v5, "nickname":Ljava/lang/String;
    add-int/lit8 v6, v0, 0x1

    .line 382
    .local v6, "pos":I
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1212f4

    new-array v9, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 381
    invoke-interface {p1, v10, v3, v0, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 383
    .local v0, "removeThisUser":Landroid/view/MenuItem;
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 385
    .end local v0    # "removeThisUser":Landroid/view/MenuItem;
    .end local v5    # "nickname":Ljava/lang/String;
    move v0, v6

    .end local v6    # "pos":I
    .local v0, "pos":I
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 386
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 345
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 347
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 353
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->tm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 357
    :cond_1
    return-void

    .line 348
    :cond_2
    :goto_0
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .line 563
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    .line 565
    invoke-virtual {p0, p0}, Lcom/android/settings/users/UserSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 566
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 1143
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1144
    const/4 v1, -0x1

    :try_start_0
    iput v1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 1145
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    .line 1146
    monitor-exit v0

    .line 1147
    return-void

    .line 1146
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onLabelChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 1161
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1162
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 390
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 391
    .local v0, "itemId":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 392
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/users/UserSettings;->onRemoveUserClicked(I)V

    .line 393
    return v1

    .line 395
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPause()V
    .locals 1

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    .line 340
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 341
    return-void
.end method

.method public onPhotoChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "photo"    # Landroid/graphics/drawable/Drawable;

    .line 1156
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1157
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 9
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .line 1058
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v0

    .line 1059
    .local v0, "canSwitchUsers":Z
    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    const/4 v2, 0x0

    if-nez v1, :cond_9

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1063
    :cond_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const/4 v3, 0x1

    if-ne p1, v1, :cond_3

    .line 1064
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v1, v1, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-eqz v1, :cond_1

    .line 1065
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 1066
    return v3

    .line 1069
    :cond_1
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1070
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {p0, v1, v2}, Lcom/android/settings/users/UserSettings;->onManageUserClicked(IZ)V

    goto :goto_0

    .line 1072
    :cond_2
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_0

    .line 1074
    :cond_3
    instance-of v1, p1, Lcom/android/settings/users/UserPreference;

    if-eqz v1, :cond_5

    .line 1075
    move-object v1, p1

    check-cast v1, Lcom/android/settings/users/UserPreference;

    invoke-virtual {v1}, Lcom/android/settings/users/UserPreference;->getUserId()I

    move-result v1

    .line 1077
    .local v1, "userId":I
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 1078
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v3}, Lcom/android/settings/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1079
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    iget v8, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1082
    .end local v1    # "userId":I
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_4
    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    if-ne p1, v1, :cond_8

    .line 1086
    invoke-static {}, Lcom/android/settings/users/UserSettings;->getAvailableInternalMemorySize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1087
    .local v1, "size":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xc800000

    cmp-long v4, v4, v6

    if-gez v4, :cond_6

    .line 1088
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f120fd2

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1090
    :cond_6
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    if-eqz v4, :cond_7

    .line 1091
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_0

    .line 1093
    :cond_7
    invoke-direct {p0, v3}, Lcom/android/settings/users/UserSettings;->onAddUserClicked(I)V

    .line 1098
    .end local v1    # "size":Ljava/lang/Long;
    :cond_8
    :goto_0
    return v2

    .line 1060
    :cond_9
    :goto_1
    return v2
.end method

.method public onResume()V
    .locals 3

    .line 318
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 320
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_0

    .line 321
    return-void

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 325
    .local v0, "screen":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    .line 327
    invoke-virtual {v2}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    .line 326
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 330
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    if-eqz v1, :cond_2

    .line 331
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/users/UserCapabilities;->updateAddUserCapabilities(Landroid/content/Context;)V

    .line 332
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->loadProfile()V

    .line 333
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    .line 335
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 361
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 362
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/EditUserInfoController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 363
    const-string v0, "adding_user"

    iget v1, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 364
    const-string v0, "removing_user"

    iget v1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 365
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 369
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/android/settings/users/EditUserInfoController;->startingActivityForResult()V

    .line 370
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 371
    return-void
.end method
