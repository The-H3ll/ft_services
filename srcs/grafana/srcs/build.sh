# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    build.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: molabhai <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/16 11:19:04 by molabhai          #+#    #+#              #
#    Updated: 2020/10/16 11:19:06 by molabhai         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#! /bin/sh

#cd grafana-7.1.5/bin/

# telegraf & ./grafana-server

supervisord -c /etc/supervisord.conf   & tail -f /dev/null
