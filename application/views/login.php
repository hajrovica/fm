<div class="loginbox radius3">
    <div class="loginboxinner radius3">

        <div class="loginheader">
            <h1 class="bebas">Sign In</h1>
            <div class="logo"></div>
        </div><!--loginheader-->

<div class="loginform">
    <div class=""><?php if (isset($message)): ?>
        <p>Invalid username or password</p>
    <?php endif ?></div>

    <?php if (isset($alert)) {
        echo "$alert";
    } ?>

<!--     <?php echo $alert; ?>
        <?=form_open(); ?>


        <p>
            Username: <?=form_input('username', set_value('username')); ?>
        </p>

        <p>
            Password: <?=form_input('password'); ?>
        </p>

        <?=form_submit('submit', 'Login'); ?>

        <?=form_close(); ?> -->


             <form id="login" action="" method="post">
                <p>
                    <label for="username" class="bebas">Username</label>
                    <input type="text" id="username" name="username" class="radius2" />
                </p>
                <p>
                    <label for="password" class="bebas">Password</label>
                    <input type="password" id="password" name="password" class="radius2" />
                </p>
                <p>
                    <button class="radius3 bebas">Sign in</button>
                </p>
                <p><a href="" class="whitelink small">Can't access your account?</a></p>
            </form>
        </div><!--loginform-->
    </div><!--loginboxinner-->
</div><!--loginbox-->