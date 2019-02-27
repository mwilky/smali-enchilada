.class public Landroid/service/notification/NotificationRankingUpdate;
.super Ljava/lang/Object;
.source "NotificationRankingUpdate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/NotificationRankingUpdate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mChannels:Landroid/os/Bundle;

.field private final mHidden:Landroid/os/Bundle;

.field private final mImportance:[I

.field private final mImportanceExplanation:Landroid/os/Bundle;

.field private final mInterceptedKeys:[Ljava/lang/String;

.field private final mIsLock:[Z

.field private final mKeys:[Ljava/lang/String;

.field private final mLockedApps:[Ljava/lang/String;

.field private final mOverrideGroupKeys:Landroid/os/Bundle;

.field private final mOverridePeople:Landroid/os/Bundle;

.field private final mShowBadge:Landroid/os/Bundle;

.field private final mSnoozeCriteria:Landroid/os/Bundle;

.field private final mSuppressedVisualEffects:Landroid/os/Bundle;

.field private final mUserSentiment:Landroid/os/Bundle;

.field private final mVisibilityOverrides:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 135
    new-instance v0, Landroid/service/notification/NotificationRankingUpdate$1;

    invoke-direct {v0}, Landroid/service/notification/NotificationRankingUpdate$1;-><init>()V

    sput-object v0, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mKeys:[Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mInterceptedKeys:[Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mVisibilityOverrides:Landroid/os/Bundle;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mSuppressedVisualEffects:Landroid/os/Bundle;

    .line 86
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mKeys:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mImportance:[I

    .line 87
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mImportance:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mImportanceExplanation:Landroid/os/Bundle;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mOverrideGroupKeys:Landroid/os/Bundle;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mChannels:Landroid/os/Bundle;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mOverridePeople:Landroid/os/Bundle;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mSnoozeCriteria:Landroid/os/Bundle;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mShowBadge:Landroid/os/Bundle;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mUserSentiment:Landroid/os/Bundle;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mHidden:Landroid/os/Bundle;

    .line 99
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mKeys:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mIsLock:[Z

    .line 100
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mIsLock:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mLockedApps:[Ljava/lang/String;

    .line 104
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;[ILandroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;[Z[Ljava/lang/String;)V
    .locals 0
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "interceptedKeys"    # [Ljava/lang/String;
    .param p3, "visibilityOverrides"    # Landroid/os/Bundle;
    .param p4, "suppressedVisualEffects"    # Landroid/os/Bundle;
    .param p5, "importance"    # [I
    .param p6, "explanation"    # Landroid/os/Bundle;
    .param p7, "overrideGroupKeys"    # Landroid/os/Bundle;
    .param p8, "channels"    # Landroid/os/Bundle;
    .param p9, "overridePeople"    # Landroid/os/Bundle;
    .param p10, "snoozeCriteria"    # Landroid/os/Bundle;
    .param p11, "showBadge"    # Landroid/os/Bundle;
    .param p12, "userSentiment"    # Landroid/os/Bundle;
    .param p13, "hidden"    # Landroid/os/Bundle;
    .param p14, "isLock"    # [Z
    .param p15, "lockedApps"    # [Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroid/service/notification/NotificationRankingUpdate;->mKeys:[Ljava/lang/String;

    .line 60
    iput-object p2, p0, Landroid/service/notification/NotificationRankingUpdate;->mInterceptedKeys:[Ljava/lang/String;

    .line 61
    iput-object p3, p0, Landroid/service/notification/NotificationRankingUpdate;->mVisibilityOverrides:Landroid/os/Bundle;

    .line 62
    iput-object p4, p0, Landroid/service/notification/NotificationRankingUpdate;->mSuppressedVisualEffects:Landroid/os/Bundle;

    .line 63
    iput-object p5, p0, Landroid/service/notification/NotificationRankingUpdate;->mImportance:[I

    .line 64
    iput-object p6, p0, Landroid/service/notification/NotificationRankingUpdate;->mImportanceExplanation:Landroid/os/Bundle;

    .line 65
    iput-object p7, p0, Landroid/service/notification/NotificationRankingUpdate;->mOverrideGroupKeys:Landroid/os/Bundle;

    .line 66
    iput-object p8, p0, Landroid/service/notification/NotificationRankingUpdate;->mChannels:Landroid/os/Bundle;

    .line 67
    iput-object p9, p0, Landroid/service/notification/NotificationRankingUpdate;->mOverridePeople:Landroid/os/Bundle;

    .line 68
    iput-object p10, p0, Landroid/service/notification/NotificationRankingUpdate;->mSnoozeCriteria:Landroid/os/Bundle;

    .line 69
    iput-object p11, p0, Landroid/service/notification/NotificationRankingUpdate;->mShowBadge:Landroid/os/Bundle;

    .line 70
    iput-object p12, p0, Landroid/service/notification/NotificationRankingUpdate;->mUserSentiment:Landroid/os/Bundle;

    .line 71
    iput-object p13, p0, Landroid/service/notification/NotificationRankingUpdate;->mHidden:Landroid/os/Bundle;

    .line 75
    iput-object p14, p0, Landroid/service/notification/NotificationRankingUpdate;->mIsLock:[Z

    .line 76
    iput-object p15, p0, Landroid/service/notification/NotificationRankingUpdate;->mLockedApps:[Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public getChannels()Landroid/os/Bundle;
    .locals 1

    .line 175
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mChannels:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHidden()Landroid/os/Bundle;
    .locals 1

    .line 195
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mHidden:Landroid/os/Bundle;

    return-object v0
.end method

.method public getImportance()[I
    .locals 1

    .line 163
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mImportance:[I

    return-object v0
.end method

.method public getImportanceExplanation()Landroid/os/Bundle;
    .locals 1

    .line 167
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mImportanceExplanation:Landroid/os/Bundle;

    return-object v0
.end method

.method public getInterceptedKeys()[Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mInterceptedKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public getIsLock()[Z
    .locals 1

    .line 202
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mIsLock:[Z

    return-object v0
.end method

.method public getLockedApps()[Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mLockedApps:[Ljava/lang/String;

    return-object v0
.end method

.method public getOrderedKeys()[Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public getOverrideGroupKeys()Landroid/os/Bundle;
    .locals 1

    .line 171
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mOverrideGroupKeys:Landroid/os/Bundle;

    return-object v0
.end method

.method public getOverridePeople()Landroid/os/Bundle;
    .locals 1

    .line 179
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mOverridePeople:Landroid/os/Bundle;

    return-object v0
.end method

.method public getShowBadge()Landroid/os/Bundle;
    .locals 1

    .line 187
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mShowBadge:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSnoozeCriteria()Landroid/os/Bundle;
    .locals 1

    .line 183
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mSnoozeCriteria:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSuppressedVisualEffects()Landroid/os/Bundle;
    .locals 1

    .line 159
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mSuppressedVisualEffects:Landroid/os/Bundle;

    return-object v0
.end method

.method public getUserSentiment()Landroid/os/Bundle;
    .locals 1

    .line 191
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mUserSentiment:Landroid/os/Bundle;

    return-object v0
.end method

.method public getVisibilityOverrides()Landroid/os/Bundle;
    .locals 1

    .line 155
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mVisibilityOverrides:Landroid/os/Bundle;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 113
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mKeys:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mInterceptedKeys:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mVisibilityOverrides:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 116
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mSuppressedVisualEffects:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 117
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mImportance:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 118
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mImportanceExplanation:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 119
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mOverrideGroupKeys:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 120
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mChannels:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 121
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mOverridePeople:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 122
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mSnoozeCriteria:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 123
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mShowBadge:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 124
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mUserSentiment:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 125
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mHidden:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 129
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mIsLock:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 130
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mLockedApps:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 133
    return-void
.end method
