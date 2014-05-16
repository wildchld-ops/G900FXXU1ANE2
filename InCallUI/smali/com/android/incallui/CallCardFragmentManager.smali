.class public Lcom/android/incallui/CallCardFragmentManager;
.super Lcom/android/incallui/BaseFragmentManager;
.source "CallCardFragmentManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$AccessoryEventListener;
.implements Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$ModifyCallListener;
.implements Lcom/android/incallui/InCallPresenter$WindowStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallCardFragmentManager$1;,
        Lcom/android/incallui/CallCardFragmentManager$CallCardMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/CallCardFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$WindowStatusChangeListener;",
        "Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;",
        "Lcom/android/incallui/InCallPresenter$ModifyCallListener;",
        "Lcom/android/incallui/InCallPresenter$AccessoryEventListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# instance fields
.field currentFragment:Lcom/android/incallui/CallCardFragment;

.field private mIsCoverClosed:Z

.field private mIsMultiWindowMode:Z

.field private mOrientation:I


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/incallui/BaseFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-boolean v0, p0, Lcom/android/incallui/CallCardFragmentManager;->mIsMultiWindowMode:Z

    iput-boolean v0, p0, Lcom/android/incallui/CallCardFragmentManager;->mIsCoverClosed:Z

    iput v0, p0, Lcom/android/incallui/CallCardFragmentManager;->mOrientation:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragmentManager;->currentFragment:Lcom/android/incallui/CallCardFragment;

    const-string v0, "CallCardFragmentManager..."

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardFragmentManager;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->INVALID:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    iput-object v0, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addWindowStatusListener(Lcom/android/incallui/InCallPresenter$WindowStatusChangeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addConfigurationChangeListener(Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addModifyCallListener(Lcom/android/incallui/InCallPresenter$ModifyCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    return-void
.end method


# virtual methods
.method public checkAndHideFragment(Ljava/lang/Enum;)V
    .locals 2

    sget-object v0, Lcom/android/incallui/CallCardFragmentManager$1;->$SwitchMap$com$android$incallui$CallCardFragmentManager$CallCardMode:[I

    check-cast p1, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    invoke-virtual {p1}, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    sget-object v1, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->VIDEO:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    if-eq v0, v1, :cond_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    sget-object v1, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->VIDEO:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    if-eq v0, v1, :cond_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragmentManager;->hideCurrentFragment()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic checkAndSet(Z)Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    return-object v0
.end method

.method protected checkAndSet(Z)Lcom/android/incallui/CallCardFragment;
    .locals 14

    iget-object v12, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v12}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v12

    if-nez v12, :cond_0

    iget-object v12, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v12}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    const/4 v12, 0x0

    :goto_0
    return-object v12

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v5

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v9

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    const-string v12, "feature_chn_duos"

    invoke-static {v12}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v12

    const/16 v13, 0x9

    if-eq v12, v13, :cond_c

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_c

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_3

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    const/4 v6, 0x1

    :cond_3
    :goto_1
    if-eqz v6, :cond_10

    sget-object v11, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->QCIF_VIDEO:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    :goto_2
    const-string v12, "automatic_answering_machine"

    invoke-static {v12}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/incallui/CallCardFragmentManager;->mIsCoverClosed:Z

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isCoverClosed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/incallui/CallCardFragmentManager;->log(Ljava/lang/String;)V

    :cond_4
    iget-boolean v12, p0, Lcom/android/incallui/CallCardFragmentManager;->mIsCoverClosed:Z

    if-eqz v12, :cond_5

    sget-object v11, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->CALLCARD_COVER:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    :cond_5
    iget-object v12, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v12}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v12, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v12, v1}, Lcom/android/incallui/InCallActivity;->getProperOrientation(Landroid/content/res/Configuration;)I

    move-result v10

    iget v12, p0, Lcom/android/incallui/CallCardFragmentManager;->mOrientation:I

    iget v13, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v12, v13, :cond_6

    iget v12, p0, Lcom/android/incallui/CallCardFragmentManager;->mOrientation:I

    iget-object v13, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v13, v1}, Lcom/android/incallui/InCallActivity;->getProperOrientation(Landroid/content/res/Configuration;)I

    move-result v13

    if-eq v12, v13, :cond_6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "forceUpdate : mOrientation - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/incallui/CallCardFragmentManager;->mOrientation:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", config.orientation - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", getProperOrientation - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {p0, v12, v13}, Lcom/android/incallui/CallCardFragmentManager;->log(Ljava/lang/String;Z)V

    const/4 p1, 0x1

    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mFragmentType : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " requestedMode : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", forceUpdate : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/incallui/CallCardFragmentManager;->log(Ljava/lang/String;)V

    if-nez p1, :cond_7

    iget-object v12, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v12, v11, :cond_8

    :cond_7
    iget v12, v1, Landroid/content/res/Configuration;->orientation:I

    iput v12, p0, Lcom/android/incallui/CallCardFragmentManager;->mOrientation:I

    invoke-virtual {p0, v11, p1}, Lcom/android/incallui/CallCardFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    iput-object v11, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_8
    iget-object v12, p0, Lcom/android/incallui/CallCardFragmentManager;->currentFragment:Lcom/android/incallui/CallCardFragment;

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getVideoResolution()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getVideoResolution()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_b

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_b
    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_3

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingRejectedCall()Z

    move-result v12

    if-nez v12, :cond_d

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingMissedCall()Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_d
    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getVideoResolution()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_e
    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getVideoResolution()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_f

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_f
    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_10
    if-eqz v7, :cond_11

    sget-object v11, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->QVGA_VIDEO:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    goto/16 :goto_2

    :cond_11
    if-eqz v8, :cond_12

    sget-object v11, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->VIDEO:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    goto/16 :goto_2

    :cond_12
    if-eqz v9, :cond_14

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkNaviMode()Z

    move-result v12

    if-nez v12, :cond_13

    sget-object v11, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->DRIVE_LINK:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    goto/16 :goto_2

    :cond_13
    sget-object v11, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->DRIVE_LINK_MULTI:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    goto/16 :goto_2

    :cond_14
    if-eqz v5, :cond_15

    sget-object v11, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->EASY_COMMON:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    goto/16 :goto_2

    :cond_15
    iget-boolean v12, p0, Lcom/android/incallui/CallCardFragmentManager;->mIsMultiWindowMode:Z

    if-eqz v12, :cond_16

    sget-object v11, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->VOICE_COMMON_MULTI:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    goto/16 :goto_2

    :cond_16
    if-eqz v0, :cond_17

    sget-object v11, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->VOICE_MULTISIM:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    goto/16 :goto_2

    :cond_17
    sget-object v11, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->VOICE_COMMON:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    goto/16 :goto_2
.end method

.method protected bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getFragment()Lcom/android/incallui/CallCardFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragmentManager;->currentFragment:Lcom/android/incallui/CallCardFragment;

    return-object v0
.end method

.method public hideCurrentFragment()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCardFragment;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/incallui/CallCardFragmentManager;->mOrientation:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallCardFragment;

    return-void
.end method

.method public onCoverStatusChanged(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/incallui/CallCardFragmentManager;->mIsCoverClosed:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallCardFragment;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/BaseFragmentManager;->onDestroy()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallCardFragmentManager;->mIsMultiWindowMode:Z

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeWindowStatusListener(Lcom/android/incallui/InCallPresenter$WindowStatusChangeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeConfigurationChangeListener(Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeModifyCallListener(Lcom/android/incallui/InCallPresenter$ModifyCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeAccessoryEventListener(Lcom/android/incallui/InCallPresenter$AccessoryEventListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/CallCardFragmentManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onIncomingModifyCall(I)V
    .locals 0

    return-void
.end method

.method public onResultModifyCallRequest(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallCardFragment;

    return-void
.end method

.method public onWindowStatusChanged(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/incallui/CallCardFragmentManager;->mIsMultiWindowMode:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallCardFragment;

    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/CallCardFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardFragmentManager;->setCurrentFragment(Lcom/android/incallui/CallCardFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/CallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardFragmentManager;->currentFragment:Lcom/android/incallui/CallCardFragment;

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4

    const v0, 0x7f08011b

    const/4 v1, 0x0

    sget-object v3, Lcom/android/incallui/CallCardFragmentManager$1;->$SwitchMap$com$android$incallui$CallCardFragmentManager$CallCardMode:[I

    move-object v2, p1

    check-cast v2, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardFragmentManager;->checkAndHideFragment(Ljava/lang/Enum;)V

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/CallCardFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/android/incallui/CallCardVoiceFragment;

    invoke-direct {v1}, Lcom/android/incallui/CallCardVoiceFragment;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/android/incallui/CallCardMwVoiceFragment;

    invoke-direct {v1}, Lcom/android/incallui/CallCardMwVoiceFragment;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/android/incallui/CallCardMultiSimFragment;

    invoke-direct {v1}, Lcom/android/incallui/CallCardMultiSimFragment;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;

    invoke-direct {v1}, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v1, Lcom/android/incallui/drivelink/CallCardMWDriveLinkFragment;

    invoke-direct {v1}, Lcom/android/incallui/drivelink/CallCardMWDriveLinkFragment;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/android/incallui/CallCardQcifVideoFragment;

    invoke-direct {v1}, Lcom/android/incallui/CallCardQcifVideoFragment;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v1, Lcom/android/incallui/CallCardQvgaVideoFragment;

    invoke-direct {v1}, Lcom/android/incallui/CallCardQvgaVideoFragment;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance v1, Lcom/android/incallui/CallCardVideoFragment;

    invoke-direct {v1}, Lcom/android/incallui/CallCardVideoFragment;-><init>()V

    goto :goto_0

    :pswitch_8
    new-instance v1, Lcom/android/incallui/CallCardCoverFragment;

    invoke-direct {v1}, Lcom/android/incallui/CallCardCoverFragment;-><init>()V

    goto :goto_0

    :pswitch_9
    new-instance v1, Lcom/android/incallui/CallCardEasyFragment;

    invoke-direct {v1}, Lcom/android/incallui/CallCardEasyFragment;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
